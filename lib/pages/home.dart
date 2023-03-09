import 'package:boilerplate/styles/styles.dart';
import 'package:boilerplate/widgets/widgets.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: SizeStyle.size15),
        child: Column(
          children: [
            const SizedBox(height: SizeStyle.size10),
            Center(
              child: Text(
                'Widgets examples',
                style: H1TextStyle().style(),
              ),
            ),
            const SizedBox(height: SizeStyle.size10),
            const TextFormFieldWidget(labelText: 'Text Form Field'),
            const SizedBox(height: SizeStyle.size10),
            TextButtonWidget(
              text: const Text('TextButton and Toast'),
              onPressed: () => showToastWithoutContext(message: 'A toast!'),
            ),
          ],
        ),
      ),
    );
  }
}
