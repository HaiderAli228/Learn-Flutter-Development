import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class SwipeItem {
  final Color color;
  final String text;

  SwipeItem(this.color, this.text);
}

class SimpleLiquidSwipe extends StatelessWidget {
  final List<SwipeItem> pages = [

    SwipeItem(Colors.deepPurpleAccent, "Liquid Swipe Example"),
    SwipeItem(Colors.red, "Do Try It. Thank you!"),
    SwipeItem(Colors.green, "Liked? Fork & Give Star!"),
    SwipeItem(Colors.orange, "I am Haider Ali"),
    SwipeItem(Colors.blue, "Follow on Linked In "),
    SwipeItem(Colors.pink, "Page with Gesture Example"),
    SwipeItem(Colors.greenAccent, "Source code on github"),
    SwipeItem(Colors.black, "Follow for More 😁"),
  ];

  final LiquidController _liquidController = LiquidController();

  SimpleLiquidSwipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe.builder(
            itemCount: pages.length,
            itemBuilder: (context, index) => Container(
              color: pages[index].color,
              child: Center(
                child: Text(
                  pages[index].text,
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            waveType: WaveType.liquidReveal,
            slideIconWidget: GestureDetector(
              onTap: () {
                print("Tapped");
                int currentPage = _liquidController.currentPage;
                if (currentPage > 0) {
                  _liquidController.animateToPage(page: currentPage - 1);
                } else {
                  _liquidController.jumpToPage(page: pages.length - 1);
                }
              },
              child: Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
            enableLoop: true,
            liquidController: _liquidController, // Add the controller here
          ),
        ],
      ),
    );
  }
}
