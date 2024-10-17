extension DateTimeExtension on DateTime {
  String get brazilianDateTime {
    String formattedDay = '${day < 10 ? '0' : ''}$day';
    String formattedMonth = '${month < 10 ? '0' : ''}$month';
    
    return '$formattedDay/$formattedMonth/$year';
  }

  String get brHour {
    String formattedHour = '${hour < 10 ? '0' : ''}$hour';
    String formattedMinute = '${minute < 10 ? '0' : ''}$minute';

    return '$formattedHour:$formattedMinute';
  }
}
