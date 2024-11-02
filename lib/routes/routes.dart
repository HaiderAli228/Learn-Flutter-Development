import 'package:flutter/material.dart';
import 'package:learn_flutter/calculator.dart';
import 'package:learn_flutter/form_validation.dart';
import 'package:learn_flutter/routes/routes_name.dart';
import '../animations/liquid_swipe.dart';

class Routes {
  static Route<bool?> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.calculatorScreen:
        return _buildPageRoute(
          const Calculator(),
        );
      case RoutesName.liquidSwipeScreen:
        return _buildPageRoute(
          SimpleLiquidSwipe(),
        );
      case RoutesName.formScreen:
        return _buildPageRoute(
          const FormValidation(),
        );
      default:
        return _buildPageRoute(
          const Scaffold(
            body: Center(
              child: Text(
                "No Route Found",
                style: TextStyle(fontFamily: "Poppins"),
              ),
            ),
          ),
        );
    }
  }

  // Helper method to build a PageRoute with custom slide transition animation
  static PageRouteBuilder<bool?> _buildPageRoute(Widget page) {
    return PageRouteBuilder<bool?>(
      // Specifies the widget to display when the route is pushed
      pageBuilder: (context, animation, secondaryAnimation) => page,
      // Defines how the transition animation will behave
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0); // Animation starts from the right edge
        const end = Offset.zero; // Ends in the current view position
        const curve = Curves.easeInOut; // Specifies the curve of the animation

        // Tween defines the range of the animation from the start to end
        final tween = Tween(begin: begin, end: end);
        // CurvedAnimation adds smoothness to the transition based on the curve
        final curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );

        // SlideTransition applies the sliding animation to the child widget
        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      },
    );
  }
}
