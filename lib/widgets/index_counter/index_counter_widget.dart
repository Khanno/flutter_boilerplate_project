import 'package:boilerplate/styles/styles.dart';
import 'package:boilerplate/widgets/index_counter/index_unit_widget.dart';
import 'package:flutter/material.dart';

class IndexCounter extends StatelessWidget {
  final int index;
  final int length;

  const IndexCounter({
    Key? key,
    required this.index,
    required this.length,
  }) : super(key: key);

  List<Widget> buildItens({required int index, required int length}) {
    List<Widget> itens = [];

    for (int i = 0; i < length; i++) {
      itens.add(const IndexUnit(color: ColorStyles.lightGray));
    }

    itens[index] = const IndexUnit(color: ColorStyles.gray);

    return itens;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: buildItens(index: index, length: length),
    );
  }
}
