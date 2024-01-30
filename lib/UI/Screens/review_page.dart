import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickalert/quickalert.dart';
import '../../Entities/card_entity.dart';
import '../../ReviewBloc/review_bloc.dart';
import '../../ReviewBloc/review_state.dart';
import '../Widgets/show_card_widget.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key, required this.title});

  final String title;

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  final PageController _myPage = PageController();

  @override
  void initState() {
    // request Data and bloc set loading State
    BlocProvider.of<ReviewBloc>(context).add(ReviewInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back),
          onPressed: () {},
        ),
      ),
      // must implement with page view builder
      body: BlocConsumer<ReviewBloc, FlashCardState>(
        listener: (context, state) {
          if (state is FlashCardErrorState) {
            QuickAlert.show(
                context: context,
                type: QuickAlertType.error,
                onConfirmBtnTap: () {
                  BlocProvider.of<ReviewBloc>(context)
                      .add(ReviewInitialEvent());
                  Navigator.of(context).pop();
                },
                title: "Oops...",
                text: "Please check internet connection");
          }
        },
        builder: (context, state) {
          if (state is FlashCardCompleteState) {
            print("Complete");
            List cards = state.lessonEntity.cards;
            return PageView.builder(
                controller: _myPage,
                itemCount: cards.length,
                itemBuilder: (context, int i) {
                  return ShowCardWidget(
                      cardEntity: CardEntity.fromJson(cards[i]));
                });
          }
          if (state is FlashCardLoadingState) {
            print("Loading");
            return const Center(
                child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(),
            ));
          }
          return Container();
        },
      ),
    );
  }
}
