import 'package:boilerplate/styles/styles.dart';
import 'package:flutter/material.dart';

void showCustomModalBottomSheet({required BuildContext context, required Widget child}) {
  showModalBottomSheet(
    context: context,
    elevation: 3.0,
    barrierColor: Colors.black.withOpacity(0.5),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(SizeStyle.size15),
    ),
    backgroundColor: Theme.of(context).backgroundColor,
    builder: (BuildContext _) {
      return child;
    },
  );
}
