import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni/UI/Widgets/end_review_page.dart';
import '../../Entities/card_entity.dart';
import '../../ReviewBloc/review_bloc.dart';
import '../../ReviewBloc/review_state.dart';
import '../Widgets/show_card_widget.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  final PageController _myPage = PageController(initialPage: 0);
  late ReviewBloc reviewBloc;

  @override
  void initState() {
    // request Data and bloc set loading State
    reviewBloc = BlocProvider.of<ReviewBloc>(context);
    reviewBloc.add(ReviewInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // must implement with page view builder
      body: BlocConsumer<ReviewBloc, ReviewState>(
        listener: (context, state) {
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
              _myPage.animateToPage(0,
                  duration: const Duration(microseconds: 1),
                  curve: Curves.bounceOut);
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            Error: (msg, code) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "OOPS...   ERROR!\n\nPlease Check Internet Connection",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).textScaleFactor * 20,
                          color: Colors.red),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          reviewBloc.add(ReviewInitialEvent());
                        },
                        child: const Text("Try Again"))
                  ],
                ),
              );
            },
            Loading: () {
              return const Center(child: CircularProgressIndicator());
            },
            orElse: () {
              return PageView.builder(
                itemCount: reviewBloc.getCards().length + 1,
                controller: _myPage,
                itemBuilder: (context, int index) {
                  var valueStepIndicator =
                      index / (reviewBloc.getCards().length - 1);
                  if (index == reviewBloc.lessonEntity.cards.length) {
                    return EndReviewPage(lessonEntity: reviewBloc.lessonEntity);
                  }
                  return ShowCardWidget(
                    cardEntity: CardEntity.fromJson(
                        reviewBloc.lessonEntity.cards[index]),
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
