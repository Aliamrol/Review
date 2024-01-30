import 'package:dio/dio.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:feather_icons_svg/feather_icons_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
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
  List cards = [];

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
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  tooltip: "Previous Page",
                  onPressed: () {
                    BlocProvider.of<ReviewBloc>(context)
                        .add(ReviewPreviousEvent());
                  },
                  icon: const Icon(CupertinoIcons.arrow_left)),
              const SizedBox(
                width: 262,
              ),
              IconButton(
                  tooltip: "Next Page",
                  onPressed: () {
                    BlocProvider.of<ReviewBloc>(context).add(ReviewNextEvent());
                  },
                  icon: const Icon(CupertinoIcons.arrow_right)),
            ],
          )
        ],
      ),
      // must implement with page view builder
      body: BlocConsumer<ReviewBloc, ReviewState>(
        listener: (context, state) {
          if (state is ReviewNextState) {
            _myPage.nextPage(
                duration: const Duration(microseconds: 1),
                curve: Curves.bounceOut);
          }
          if (state is ReviewPreviousState) {
            _myPage.previousPage(
                duration: Duration(microseconds: 1),
                curve: Curves.elasticInOut);
          }
          if (state is ReviewErrorState) {
            Navigator.of(context).pop();
            QuickAlert.show(
                context: context,
                type: QuickAlertType.warning,
                onConfirmBtnTap: () {
                  Navigator.of(context).pop();
                  BlocProvider.of<ReviewBloc>(context)
                      .add(ReviewInitialEvent());
                },
                title: "Error ${state.status}",
                text: "Please check internet connection");
          }
          if (state is ReviewLoadingState) {
            QuickAlert.show(
                context: context,
                type: QuickAlertType.loading,
                title: "Loading");
          }
        },
        builder: (context, state) {
          if (state is ReviewCompleteState ||
              state is ReviewPreviousState ||
              state is ReviewNextState) {
            if (state is ReviewCompleteState) {
              Navigator.of(context).pop();
              cards = state.lessonEntity.cards;
            }
            return PageView.builder(
                controller: _myPage,
                itemCount: cards.length,
                itemBuilder: (context, int i) {
                  var valueStepIndicator = i / cards.length;
                  return ShowCardWidget(
                    cardEntity: CardEntity.fromJson(cards[i]),
                    value: valueStepIndicator,
                  );
                });
          }
          return Container();
        },
      ),
    );
  }
}
