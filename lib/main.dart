import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni/bloc/flash_card_bloc.dart';
import 'package:flutter/material.dart';

import 'UI/Screens/review_page.dart';

void main() {
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
        create: (context) => FlashCardBloc(),
        child: const ReviewPage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
