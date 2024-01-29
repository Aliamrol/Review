import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talker/talker.dart';

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
        listener: (context, state) {},
        builder: (context, state) {
          if (state is FlashCardCompleteState) {
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
            return const Center(
                child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(),
            ));
          }
          if (state is FlashCardErrorState) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    state.msgError.toString(),
                    style: const TextStyle(color: Colors.red, fontSize: 10),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<ReviewBloc>(context)
                          .add(ReviewInitialEvent());
                    },
                    child: const Text("Try again"))
              ],
            );
          }
          return Container();
        },
      ),
    );
  }
}
