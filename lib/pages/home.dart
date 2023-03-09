import 'package:boilerplate/styles/styles.dart';
import 'package:flutter/material.dart';
import '../flavors.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(F.title),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Text(
          'Hello ${F.title}',
          style: H1TextStyle().style(),
        ),
      ),
    );
  }
}
