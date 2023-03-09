import 'package:boilerplate/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CuppertinoDatePickerWidget extends StatelessWidget {
  final Function(DateTime) onDateTimeChanged;
  final DateTime? initialDateTime;
  final Function() onTap;
  final String? oldDate;
  final Function(String?)? onCancel;

  const CuppertinoDatePickerWidget({
    required this.onDateTimeChanged,
    this.initialDateTime,
    required this.onTap,
    super.key,
    this.oldDate,
    this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: SizeStyle.size15 + 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  if (onCancel != null) {
                    onCancel!(oldDate);
                  }
                },
                child: Text(
                  'Cancelar',
                  style: SmallTextStyle().style(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.w700,
                    size: SizeStyle.size15 + 3,
                  ),
                ),
              ),
              const SizedBox(width: SizeStyle.size35 - 1),
              GestureDetector(
                onTap: onTap,
                child: Text(
                  'OK',
                  style: SmallTextStyle().style(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.w700,
                    size: SizeStyle.size15 + 3,
                  ),
                ),
              ),
              const SizedBox(width: SizeStyle.size20 + 2)
            ],
          ),
        ),
        Expanded(
          child: CupertinoDatePicker(
            backgroundColor: Colors.white,
            initialDateTime: initialDateTime ?? DateTime.now(),
            onDateTimeChanged: onDateTimeChanged,
            use24hFormat: true,
            mode: CupertinoDatePickerMode.date,
            dateOrder: DatePickerDateOrder.dmy,
          ),
        ),
      ],
    );
  }
}
