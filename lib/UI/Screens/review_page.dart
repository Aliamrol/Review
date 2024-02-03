import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:uni/Entities/lesson_entity.dart';
import 'package:uni/UI/Widgets/end_review_page.dart';
import 'package:uni/locator.dart';
import '../../Entities/card_entity.dart';
import '../../ReviewBloc/review_bloc.dart';
import '../../ReviewBloc/review_state.dart';
import '../../repository/data.dart';
import '../../repository/review_repository.dart';
import '../Widgets/show_card_widget.dart';

class ReviewPage extends StatefulWidget {
  late LessonEntity lessonEntity;

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  final PageController _myPage = PageController(initialPage: 0);
  List cards = [];
  late int i;

  @override
  void initState() {
    // request Data and bloc set loading State
    i = 0;
    BlocProvider.of<ReviewBloc>(context).add(ReviewInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // must implement with page view builder
      body: BlocConsumer<ReviewBloc, ReviewState>(
        listener: (context, state) {
          i++;
          print(i);
          print("state is : ${state.toString()}");
          state.whenOrNull(
            Next: () {
              _myPage.nextPage(
                  duration: const Duration(microseconds: 1),
                  curve: Curves.bounceOut);
            },
            Previous: () {
              _myPage.previousPage(
                  duration: const Duration(microseconds: 1),
                  curve: Curves.bounceOut);
            },
            Again: () {
              _myPage.initialPage;
            },
          );
        },
        builder: (context, state) {
          print("Builder : ${state.toString()}");
          return state.maybeWhen(
            Error: (msg, code) {
              return const Center(
                child: Text("ERRRPRRRRRRRRRRRRRR"),
              );
            },
            Loading: () {
              return const CircularProgressIndicator();
            },
            Complete: (lessonEntity) {
              widget.lessonEntity = lessonEntity;
              // Navigator.of(context).pop();
              cards = lessonEntity.cards;
              return PageView.builder(
                itemCount: cards.length + 1,
                controller: _myPage,
                itemBuilder: (context, int index) {
                  var valueStepIndicator = index / (cards.length - 1);
                  if (index == cards.length) {
                    return EndReviewPage(lessonEntity: widget.lessonEntity);
                  }
                  return ShowCardWidget(
                    cardEntity: CardEntity.fromJson(cards[index]),
                    value: valueStepIndicator,
                  );
                },
              );
            },
            orElse: () {
              print("orElse");
              return PageView.builder(
                itemCount: cards.length + 1,
                controller: _myPage,
                itemBuilder: (context, int index) {
                  var valueStepIndicator = index / (cards.length - 1);
                  if (index == cards.length) {
                    return EndReviewPage(lessonEntity: widget.lessonEntity);
                  }
                  return ShowCardWidget(
                    cardEntity: CardEntity.fromJson(cards[index]),
                    value: valueStepIndicator,
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
