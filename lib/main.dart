import 'package:boilerplate/styles/styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:boilerplate/flavors.dart';
import 'package:boilerplate/pages/home.dart';

void setupApp() {
  //TODO: Setup your services here before the runApp function

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: F.title,
      theme: customThemeData(),
      home: _flavorBanner(
        child: Home(),
        show: kDebugMode,
      ),
    );
  }

  Widget _flavorBanner({
    required Widget child,
    bool show = true,
  }) =>
      show
          ? Banner(
        location: BannerLocation.topStart,
        message: F.name,
        color: Colors.green.withOpacity(0.6),
        textStyle: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 12.0,
            letterSpacing: 1.0),
        textDirection: TextDirection.ltr,
        child: child,
      )
          : Container(
        child: child,
      );
}
