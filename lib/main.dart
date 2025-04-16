import 'package:flutter/material.dart';
import 'package:learn_flutter/state-management/provider/count.dart';
import 'package:provider/provider.dart';
import 'bottom_sheet.dart';

void main() {
  runApp(MultiProvider(
    builder: (context, child) {
      return MyApp();
    },
    providers: [
      ChangeNotifierProvider(
        create: (context) => CountProvider(),
      )
    ],
  ));
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
      home: CountExample(),
    );
  }
}
