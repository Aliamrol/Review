import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/flash_card_bloc.dart';
import '../../models/card_entity.dart';
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
    BlocProvider.of<FlashCardBloc>(context).add(FlashCardInitialEvent());
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
      body: BlocBuilder<FlashCardBloc, FlashCardState>(
        builder: (context, state) {
          if (state is FlashCardCompleteState) {
            List cards = state.lessonEntity.cards;
            return PageView.builder(itemBuilder: (context, int i) {
              return ShowCardWidget(cardEntity: CardEntity.fromJson(cards[i]));
            });
          }
          if (state is FlashCardLoadingState) {
            return const Center(
              child: Text(
                "Loading",
                style: TextStyle(color: Colors.blue, fontSize: 40),
              ),
            );
          }
          if (state is FlashCardErrorState) {
            return const Center(
              child: Text(
                "Error 404 not Found",
                style: TextStyle(color: Colors.red, fontSize: 30),
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
