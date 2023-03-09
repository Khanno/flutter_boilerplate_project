import 'package:flutter/material.dart';

class CustomFabWidget extends StatelessWidget {
  final BuildContext context;
  final String route;
  const CustomFabWidget({
    Key? key,
    required this.context,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      onPressed: () => Navigator.pushNamed(context, route, arguments: <String, dynamic> {'context': context}),
      child: const Center(
          child: Icon(
        Icons.add,
        color: Colors.white,
      )),
    );
  }
}
