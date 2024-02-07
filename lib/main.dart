import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uni/Entities/card_entity.dart';
import 'package:uni/Entities/lesson_entity.dart';
import 'package:uni/Entities/main_translation.dart';
import 'package:uni/Entities/word_photo.dart';
import 'ReviewBloc/review_bloc.dart';
import 'UI/Screens/review_page.dart';
import 'dart:developer';
import 'locator.dart';

void main() async {
  await hiveAdapter();
  await setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
          create: (context) => ReviewBloc(), child: const ReviewPage()),
    );
  }
}

void someFunction(double offset) {
  debugger(when: offset > 30);
  // ...
}

Future<void> hiveAdapter() async {
  await Hive.initFlutter();
  Hive.registerAdapter(CardEntityAdapter());
  Hive.registerAdapter(LessonEntityAdapter());
  Hive.registerAdapter(WordPhotoAdapter());
  Hive.registerAdapter(MainTranslationAdapter());
}
