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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back),
          onPressed: () {},
        ),
      ),
      // must implement with page view builder
      body: PageView(
        controller: _myPage,
        children: [
          ShowCardWidget(cardEntity: CardEntity(id: 1, title: "HELLO")),
          ShowCardWidget(cardEntity: CardEntity(id: 2, title: "BYE")),
          ShowCardWidget(cardEntity: CardEntity(id: 3, title: "HOW R U"))
        ],
      ),
    );
  }
}
