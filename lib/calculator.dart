import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var input = " ";
  var answer = " ";
  void equal() {
    try {
      var newInput = input.replaceAll("x", "*");
      Parser parser = Parser();
      Expression expression = parser.parse(newInput);
      ContextModel contextModel = ContextModel();
      var answerIs = expression.evaluate(EvaluationType.REAL, contextModel);
      setState(() {
        answer = answerIs.toString();
      });
    } catch (e) {
      setState(() {
        answer = "Warning : wrong input";
        input = " ";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: Text(
              input.toString(),
              style: TextStyle(
                color: Colors.black,
                fontSize: 21,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: Text(
              answer.toString(),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Container(
              height: 3,
              margin: EdgeInsets.symmetric(vertical: 25),
              width: 130,
              decoration: BoxDecoration(color: Colors.grey),
            ),
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    input = " ";
                    answer = '';
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius:
                          BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  margin:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Text(
                    "AC",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    input = input.substring(0, input.length - 1);
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius:
                          BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  margin:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Text(
                    "DEL",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    input = input + "%";
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius:
                          BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  margin:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Text(
                    "%",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    input = input + "/";
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius:
                          BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  margin:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Text(
                    "/",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    input = input + "7";
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius:
                          BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  margin:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Text(
                    "7",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    input = input + "8";
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius:
                          BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  margin:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Text(
                    "8",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    input = input + "9";
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius:
                          BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  margin:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Text(
                    "9",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    input = input + "x";
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius:
                          BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  margin:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Text(
                    "x",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    input = input + "4";
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius:
                          BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  margin:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Text(
                    "4",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    input = input + "5";
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius:
                          BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  margin:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Text(
                    "5",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    input = input + "6";
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius:
                          BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  margin:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Text(
                    "6",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    input = input + "-";
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius:
                          BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  margin:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Text(
                    "-",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    input = input + "1";
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius:
                          BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  margin:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    input = input + "2";
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius:
                          BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  margin:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    input = input + "3";
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius:
                          BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  margin:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Text(
                    "3",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    input = input + "+";
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius:
                          BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  margin:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Text(
                    "+",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    input = input + "0";
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius:
                          BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  margin:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Text(
                    "0",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    input = input + ".";
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius:
                          BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  margin:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Text(
                    ".",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    input = input + ",";
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius:
                          BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  margin:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Text(
                    ",",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    setState(() {
                      equal();
                    });
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius:
                          BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  margin:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Text(
                    "=",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


// this is for web
/*
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

* */