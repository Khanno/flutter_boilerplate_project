import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String dateToString({required DateTime date}) {
  final DateFormat pattern = DateFormat('dd/MM/yyyy');
  return pattern.format(date);
}

extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }

  String formatPhone() {
    return '(${substring(0, 2)}) ${substring(2, 7)}-${substring(7)}';
  }

  String formatCPF() {
    return '${substring(0, 3)}.${substring(3, 6)}.${substring(6, 9)}-${substring(9)}';
  }

  String formatCNPJ() {
    return '${substring(0, 2)}.${substring(2, 5)}.${substring(5, 8)}/${substring(8, 12)}-${substring(12)}';
  }
}

String formatWeekdayAndDate(DateTime date) {
  return DateFormat.yMMMMEEEEd('pt_BR').format(date).capitalize();
}

String formatWeekday(DateTime date) {
  return '${DateFormat.d('pt_BR').format(date)} de ${DateFormat.MMMM('pt_BR').format(date).capitalize()}';
}

extension TimeOfDayConverter on TimeOfDay {
  String to24hours() {
    final String hour = this.hour.toString().padLeft(2, '0');
    final String min = this.minute.toString().padLeft(2, '0');
    return '$hour:$min';
  }
}
