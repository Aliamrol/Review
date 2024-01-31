import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni/Entities/lesson_entity.dart';
import 'package:uni/ReviewBloc/review_bloc.dart';

class EndReviewPage extends StatefulWidget {
  LessonEntity lessonEntity;

  EndReviewPage({super.key, required this.lessonEntity});

  @override
  State<StatefulWidget> createState() => _EndReviewPage();
}

class _EndReviewPage extends State<EndReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "${widget.lessonEntity.originalTitle} :  ${widget.lessonEntity.title}"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.1),
              child: SizedBox(
                width: MediaQuery.of(context).size.height * 0.2,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Image.network(
                    "https://cdn-icons-png.flaticon.com/512/5988/5988477.png"),
              ),
            ),
            Text(
              "You've finished word review successfully",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).textScaleFactor * 20),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<ReviewBloc>(context).add(ReviewAgainEvent());
                    }, child: const Text("Review Again")),
                ElevatedButton(
                    onPressed: () {}, child: const Text("Flashcard Practice")),
                ElevatedButton(
                    onPressed: () {}, child: const Text("Spelling Practice")),
                ElevatedButton(onPressed: () {}, child: const Text("Quiz")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
