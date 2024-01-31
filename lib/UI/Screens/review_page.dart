import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:uni/Entities/lesson_entity.dart';
import 'package:uni/UI/Widgets/end_review_page.dart';
import '../../Entities/card_entity.dart';
import '../../ReviewBloc/review_bloc.dart';
import '../../ReviewBloc/review_state.dart';
import '../Widgets/show_card_widget.dart';

class ReviewPage extends StatefulWidget {
  late LessonEntity lessonEntity;

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  final PageController _myPage = PageController(initialPage: 0);
  List cards = [];

  @override
  void initState() {
    // request Data and bloc set loading State
    BlocProvider.of<ReviewBloc>(context).add(ReviewInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // must implement with page view builder
      body: BlocConsumer<ReviewBloc, ReviewState>(
        builder: (context, state) {
          if (state is ReviewCompleteState ||
              state is ReviewPreviousState ||
              state is ReviewNextState ||
              state is ReviewAgainState) {
            if (state is ReviewCompleteState) {
              widget.lessonEntity = state.lessonEntity;
              Navigator.of(context).pop();
              cards = state.lessonEntity.cards;
            }
            return PageView.builder(
                controller: _myPage,
                itemCount: cards.length + 1,
                itemBuilder: (context, int index) {
                  var valueStepIndicator = index / (cards.length - 1);
                  if (index == cards.length) {
                    return EndReviewPage(lessonEntity: widget.lessonEntity);
                  }
                  return ShowCardWidget(
                    cardEntity: CardEntity.fromJson(cards[index]),
                    value: valueStepIndicator,
                  );
                });
          }
          return Container();
        },
        listener: (context, state) {
          if (state is ReviewErrorState) {
            Navigator.of(context).pop();
            QuickAlert.show(
                context: context,
                type: QuickAlertType.warning,
                onConfirmBtnTap: () {
                  Navigator.of(context).pop();
                  BlocProvider.of<ReviewBloc>(context)
                      .add(ReviewInitialEvent());
                },
                title: "Error ${state.status}",
                text: "Please check internet connection");
          }
          if (state is ReviewLoadingState) {
            QuickAlert.show(
                context: context,
                type: QuickAlertType.loading,
                title: "Loading");
          }
          if (state is ReviewNextState) {
            _myPage.nextPage(
                duration: const Duration(microseconds: 1),
                curve: Curves.bounceOut);
          }
          if (state is ReviewPreviousState) {
            _myPage.previousPage(
                duration: const Duration(microseconds: 1),
                curve: Curves.bounceOut);
          }
          if (state is ReviewAgainState) {
            _myPage.jumpToPage(0);
          }
        },
      ),
    );
  }
}
