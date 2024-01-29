import 'package:flutter/cupertino.dart';

import '../../bloc/flash_card_bloc.dart';
import '../../models/card_entity.dart';

class ShowCardWidget extends StatefulWidget {
  late CardEntity cardEntity;

  ShowCardWidget({required this.cardEntity});

  @override
  State<StatefulWidget> createState() => _ShowCardWidget();
}

class _ShowCardWidget extends State<ShowCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Image.asset(widget.imageUrl),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Text(
          widget.cardEntity.originalTitle,
          style: TextStyle(
              fontSize: MediaQuery.of(context).textScaleFactor * 30,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.008,
        ),
        Text(
          widget.cardEntity.pronunciation,
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
        ),
        const SizedBox(
          height: 100,
        ),
        Text(widget.cardEntity.translation)
      ],
    ));
  }
}
