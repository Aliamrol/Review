import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'ReviewBloc/review_bloc.dart';
import 'UI/Screens/review_page.dart';
import 'locator.dart';

void main() async {
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
        create: (context) => ReviewBloc(),
        child: const ReviewPage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
