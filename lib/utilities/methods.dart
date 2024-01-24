class DateTimeMethods {
  String extractDate(DateTime dateTime) {
  String year = dateTime.year.toString();
  String month = dateTime.month.toString().padLeft(2, '0');
  String day = dateTime.day.toString().padLeft(2, '0');
  return '$year-$month-$day';
}


  String extractTime(DateTime dateTime){
    String hour = dateTime.hour.toString().padLeft(2, '0');
    String minute = dateTime.minute.toString().padLeft(2, '0');

    return '$hour:$minute';
  }

  String titleDateTime(DateTime dateTime){
    if (dateTime.difference(DateTime.now()).inDays == 0){
      return extractTime(dateTime);
    }
    else if (dateTime.difference(DateTime.now()).inDays == -1){
      return 'Yesterday';
    }
    else if (dateTime.difference(DateTime.now()).inDays < -1){
      return extractDate(dateTime);
    }
    else{
      return 'Error';
    }
  }
}