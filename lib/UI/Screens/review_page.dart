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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
              onPressed: () {
                BlocProvider.of<FlashCardBloc>(context)
                    .add(FlashCardBackEvent());
              },
              child: Text("Back")),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.60,
          ),
          ElevatedButton(
              onPressed: () {
                BlocProvider.of<FlashCardBloc>(context)
                    .add(FlashCardNextEvent());
              },
              child: Text("Next")),
        ],
      ),

      // must implement with page view builder
      body: ShowCardWidget(
        cardEntity: CardEntity(
            imageUrl: '',
            originalTitle: "",
            pronunciation: "",
            translation: ""),
      ),
    );
  }
}
