import 'package:flutter/material.dart';

class BasicWidgets extends StatefulWidget {
  const BasicWidgets({super.key});

  @override
  State<BasicWidgets> createState() => _BasicWidgetsState();
}

class _BasicWidgetsState extends State<BasicWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(
          "Basic Widgets",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(),
    );
  }
}
