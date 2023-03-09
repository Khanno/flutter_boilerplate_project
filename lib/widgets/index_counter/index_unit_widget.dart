import 'package:boilerplate/styles/styles.dart';
import 'package:flutter/material.dart';

class IndexUnit extends StatelessWidget {
  final Color color;
  const IndexUnit({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: SizeStyle.size15),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
        ),
        height: SizeStyle.size15,
        width: SizeStyle.size15,
      ),
    );
  }
}
