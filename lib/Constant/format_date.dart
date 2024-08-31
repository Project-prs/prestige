import 'package:intl/intl.dart';

String formatDate(DateTime? date) {
  if (date == null) {
    return '';
  }

  DateTime inputString = DateFormat('dd-MM-yyyy').parse(date.toString());
  String formatedDate = DateFormat('dd MMMM').format(inputString);
  return formatedDate;
}
