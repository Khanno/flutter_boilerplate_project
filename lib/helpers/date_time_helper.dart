import 'package:intl/intl.dart';

String monthName({required DateTime date}) {
  return toBeginningOfSentenceCase(DateFormat.MMMM('pt_PT').format(date))!;
}

String dayMonthYearToString({required DateTime date}) {
  return '${date.day} ${DateFormat.MMM('pt_PT').format(date).toUpperCase()} ${date.year}';
}

String rangeDateToString({required DateTime startDuration, required DateTime endDuration}) {
  return '${DateFormat('HH:mm').format(startDuration).toString()} - ${DateFormat('HH:mm').format(endDuration).toString()}';
}

String convertEnglishDayToPortugueseDay(String day) {
  switch (day) {
    case 'Monday':
      return 'Seg';
    case 'Tuesday':
      return 'Ter';
    case 'Wednesday':
      return 'Qua';
    case 'Thursday':
      return 'Qui';
    case 'Friday':
      return 'Sex';
    case 'Saturday':
      return 'Sáb';
    case 'Sunday':
      return 'Dom';
    default:
      return '';
  }
}

String convertEnglishDayToExtendedPortugueseDay(String day) {
  switch (day) {
    case 'Monday':
      return 'Segunda';
    case 'Tuesday':
      return 'Terça';
    case 'Wednesday':
      return 'Quarta';
    case 'Thursday':
      return 'Quinta';
    case 'Friday':
      return 'Sexta';
    case 'Saturday':
      return 'Sábado';
    case 'Sunday':
      return 'Domingo';
    default:
      return '';
  }
}

String convertMonthNumberToPortugueseMonth(int month) {
  switch (month) {
    case 1:
      return 'Janeiro';
    case 2:
      return 'Fevereiro';
    case 3:
      return 'Março';
    case 4:
      return 'Abril';
    case 5:
      return 'Maio';
    case 6:
      return 'Junho';
    case 7:
      return 'Julho';
    case 8:
      return 'Agosto';
    case 9:
      return 'Setembro';
    case 10:
      return 'Outubro';
    case 11:
      return 'Novembro';
    case 12:
      return 'Dezembro';
    default:
      return '';
  }
}
