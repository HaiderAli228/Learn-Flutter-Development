import 'package:flutter/material.dart';

class MinCal extends StatefulWidget {
  const MinCal({super.key});

  @override
  State<MinCal> createState() => _MinCalState();
}

class _MinCalState extends State<MinCal> {
  TextEditingController firstNumController = TextEditingController();
  TextEditingController secondNumController = TextEditingController();
  int? sum, mul, sub;
  double? div;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.32),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // First Number Field
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "First Value Required";
                    }
                    return null;
                  },
                  controller: firstNumController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Enter First Number Here",
                    fillColor: Colors.grey.shade100,
                    prefixIcon: const Icon(Icons.numbers),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey.shade100)),
                  ),
                ),
              ),
              // Second Number Field
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Second Value Required";
                    }
                    return null;
                  },
                  controller: secondNumController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Enter Second Number Here",
                    fillColor: Colors.grey.shade100,
                    prefixIcon: const Icon(Icons.numbers),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey.shade100)),
                  ),
                ),
              ),
              // Results Display
              Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text("Sum: ${sum ?? 0}"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text("Subtraction: ${sub ?? 0}"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text("Division: ${div?.toStringAsFixed(2) ?? '0.00'}"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text("Multiplication: ${mul ?? 0}"),
                      )
                    ],
                  ),
                ),
              ),
              // Calculate Button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        int firstNum = int.parse(firstNumController.text);
                        int secondNum = int.parse(secondNumController.text);

                        sum = firstNum + secondNum;
                        sub = firstNum - secondNum;
                        mul = firstNum * secondNum;
                        div = secondNum != 0
                            ? firstNum / secondNum
                            : double.infinity;
                      });
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(2),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      "Calculate",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
