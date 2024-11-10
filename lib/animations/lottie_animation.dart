import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimation extends StatefulWidget {
  const LottieAnimation({super.key});

  @override
  State<LottieAnimation> createState() => _LottieAnimationState();
}

class _LottieAnimationState extends State<LottieAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        title: Text(
          "Lottie Animation",
          style: TextStyle(
              color: Colors.white,
              letterSpacing: 1,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
              fontSize: 22),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/images/2.json",
                width: double.infinity, height: 300, fit: BoxFit.cover),
            Lottie.asset(
              "assets/images/1.json",
            )
          ],
        ),
      ),
    );
  }
}
