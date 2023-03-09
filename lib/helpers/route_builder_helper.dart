import 'package:flutter/material.dart';

Route<dynamic> createRoute({required Widget Function(BuildContext, Animation<double>, Animation<double>) pageBuilder}) {
  return PageRouteBuilder<dynamic>(
      pageBuilder: pageBuilder,
      transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) {
        const Offset being = Offset(0.0, 1.0);
        const Offset end = Offset.zero;
        const Cubic curve = Curves.ease;
        final Animatable<Offset> tween = Tween<Offset>(begin: being, end: end).chain(CurveTween(curve: curve));
        final Animation<Offset> offsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      });
}

class AnimatedNamedRoute extends PageRouteBuilder<dynamic> {
  AnimatedNamedRoute({required Widget page, required String routeName, bool isHorizontal = false})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            Offset being = isHorizontal ? const Offset(1.0, 0.0) : const Offset(0.0, 1.0);
            const Offset end = Offset.zero;
            const Cubic curve = Curves.ease;
            final Animatable<Offset> tween = Tween<Offset>(begin: being, end: end).chain(CurveTween(curve: curve));
            final Animation<Offset> offsetAnimation = animation.drive(tween);
            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        );
}
