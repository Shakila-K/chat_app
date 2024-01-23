class DateTimeMethods {
  String extractDate(DateTime dateTime){
    return '${dateTime.year}-${dateTime.month}-${dateTime.day}';
  }

  String extractTime(DateTime dateTime){
    return '${dateTime.hour}:${dateTime.minute==0?'00':dateTime.minute}';
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