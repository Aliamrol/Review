import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni/Cubit/review_cubit.dart';
import '../../Entities/card_entity.dart';

class ShowCardWidget extends StatefulWidget {
  final CardEntity cardEntity;
  final double value;

  const ShowCardWidget(
      {super.key, required this.cardEntity, required this.value});

  @override
  State<StatefulWidget> createState() => _ShowCardWidget();
}

class _ShowCardWidget extends State<ShowCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // linear step indicator
          Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                  left: MediaQuery.of(context).size.width * 0.04,
                  right: MediaQuery.of(context).size.width * 0.04),
              child: LinearProgressIndicator(
                value: widget.value,
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          // flash card
          Column(
            children: [
              Center(
                child: Image.network(
                  widget.cardEntity.mainTranslation!["wordPhoto"]["photo"],
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return const CircularProgressIndicator(
                      color: Colors.blue,
                    );
                  },
                  errorBuilder: (BuildContext context, Object exception,
                      StackTrace? stackTrace) {
                    return AlertDialog(
                      title: const Text("Error"),
                      content: const Text("Please Check connection"),
                      actions: [
                        ElevatedButton(
                            onPressed: () {}, child: const Text("Again")),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                widget.cardEntity.title ?? "TITLE",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).textScaleFactor * 50,
                    fontWeight: FontWeight.w400),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Visibility(
                    visible: widget.value == 0 ? false : true,
                    child: IconButton(
                        tooltip: "Previous Page",
                        onPressed: () {
                          BlocProvider.of<ReviewCubit>(context).previous();
                        },
                        icon: const Icon(CupertinoIcons.arrow_left)),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.727777778,
                  ),
                  IconButton(
                      tooltip: "Next Page",
                      onPressed: () {
                        BlocProvider.of<ReviewCubit>(context).next();
                      },
                      icon: const Icon(CupertinoIcons.arrow_right)),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.008,
              ),
              Text(
                widget.cardEntity.phonetic ?? "phonetic",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: MediaQuery.of(context).textScaleFactor * 14,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0625,
              ),
              Text(widget.cardEntity.description ??
                  "description description description")
            ],
          )
        ],
      ),
    );
  }
}


