import 'package:flutter/material.dart';
import 'package:learn_flutter/calculator.dart';
import 'package:learn_flutter/form_validation.dart';
import 'package:learn_flutter/min_cal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "Poppins",
          primaryColor: Colors.blue,
          primarySwatch: Colors.blue,
          buttonTheme: const ButtonThemeData(
            buttonColor: Colors.blue,
            textTheme: ButtonTextTheme.normal,
          )),
      home: const FormValidation(),
    );
  }
}
