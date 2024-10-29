import 'package:flutter/material.dart';
import 'package:flutter_carousel_intro/flutter_carousel_intro.dart';
import 'package:flutter_carousel_intro/slider_item_model.dart';

import 'login_screen.dart';


class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.85,
              child: FlutterCarouselIntro(
                secondaryColor: Colors.green.shade100,
                primaryColor: Colors.green,
                slides: [
                  SliderItem(
                    titleTextStyle: const TextStyle(fontSize: 16),
                    title: 'This is the first image of the introduction screen.'
                        ' I am The Best that is the most important thing in'
                        ' the computer science field',
                    titleTextAlign: TextAlign.start,
                    widget: Image.asset("assets/images/1.jpg"),
                  ),
                  SliderItem(
                    titleTextStyle: const TextStyle(fontSize: 16),
                    title:
                        'This is the second image of the introduction screen.'
                        ' I am The Best that is the most important thing in'
                        ' the computer science field',
                    titleTextAlign: TextAlign.start,
                    widget: Image.asset("assets/images/2.jpg"),
                  ),
                  SliderItem(
                    titleTextStyle: const TextStyle(fontSize: 16),
                    title: 'This is the third image of the introduction screen.'
                        ' I am The Best that is the most important thing in'
                        ' the computer science field',
                    titleTextAlign: TextAlign.start,
                    widget: Image.asset("assets/images/3.jpg"),
                  ),
                  SliderItem(
                    widget: Image.asset("assets/images/1.jpg"),
                    titleTextStyle: const TextStyle(fontSize: 16),
                    title: 'This is the Last image of the introduction screen.'
                        ' I am The Best that is the most important thing in'
                        ' the computer science field',
                    titleTextAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ));
              },
              child: Container(
                height: 50,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(6),
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Get Started",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
