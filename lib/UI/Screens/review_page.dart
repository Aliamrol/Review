import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni/Cubit/review_cubit.dart';
import 'package:uni/UI/Widgets/end_review_page.dart';
import '../../Entities/card_entity.dart';
import '../Widgets/show_card_widget.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  final PageController _myPage = PageController(initialPage: 0);
  late ReviewCubit reviewCubit;

  @override
  void initState() {
    // request Data and bloc set loading State
    reviewCubit = BlocProvider.of<ReviewCubit>(context);
    reviewCubit.initial();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // must implement with page view builder
      body: BlocConsumer<ReviewCubit, ReviewState>(
        listener: (context, state) {
          state.whenOrNull(
            next: () {
              _myPage.nextPage(
                  duration: const Duration(microseconds: 1),
                  curve: Curves.bounceOut);
            },
            previous: () {
              _myPage.previousPage(
                  duration: const Duration(microseconds: 1),
                  curve: Curves.bounceOut);
            },
            again: () {
              _myPage.animateToPage(0,
                  duration: const Duration(microseconds: 1),
                  curve: Curves.bounceOut);
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            error: (msg, code) {
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
                          reviewCubit.initial();
                        },
                        child: const Text("Try Again"))
                  ],
                ),
              );
            },
            loading: () {
              return const Center(child: CircularProgressIndicator());
            },
            orElse: () {
              return PageView.builder(
                itemCount: reviewCubit.getCards().length + 1,
                controller: _myPage,
                itemBuilder: (context, int index) {
                  var valueStepIndicator =
                      index / (reviewCubit.getCards().length - 1);
                  if (index == reviewCubit.lessonEntity.cards.length) {
                    return EndReviewPage(
                        lessonEntity: reviewCubit.lessonEntity);
                  }
                  return ShowCardWidget(
                    cardEntity: CardEntity.fromJson(
                        reviewCubit.lessonEntity.cards[index]),
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
