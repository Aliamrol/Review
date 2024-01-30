import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Entities/card_entity.dart';

class ShowCardWidget extends StatefulWidget {
  late CardEntity cardEntity;

  ShowCardWidget({super.key, required this.cardEntity});

  @override
  State<StatefulWidget> createState() => _ShowCardWidget();
}

class _ShowCardWidget extends State<ShowCardWidget> {
  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          widget.cardEntity.mainTranslation!["wordPhoto"]["photo"],
          loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) {
              return child;
            }
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            );
          },
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Text(
          widget.cardEntity.title ?? "TITLE",
          style: TextStyle(
              fontSize: MediaQuery.of(context).textScaleFactor * 50,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.008,
        ),
        Text(
          widget.cardEntity.phonetic ?? "phonetic",
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
        ),
        const SizedBox(
          height: 100,
        ),
        Text(widget.cardEntity.description ??
            "description description description")
      ],
    );
  }
}
