
  const imageplaceHolder="https://davidkoepp.com/wp-content/themes/blankslate/images/Movie%20Placeholder.jpg";

String getDate(String? date) {
  if (date == null || date.isEmpty) {
    return '';
  }

  final vals = date.split('-');
  String year = vals[0];
  int monthNb = int.parse(vals[1]);
  String day = vals[2];

  String month = '';

  switch (monthNb) {
    case 1:
      month = 'Jan';
      break;
    case 2:
      month = 'Feb';
      break;
    case 3:
      month = 'Mar';
      break;
    case 4:
      month = 'Apr';
      break;
    case 5:
      month = 'May';
      break;
    case 6:
      month = 'Jun';
      break;
    case 7:
      month = 'Jul';
      break;
    case 8:
      month = 'Aug';
      break;
    case 9:
      month = 'Sep';
      break;
    case 10:
      month = 'Oct';
      break;
    case 11:
      month = 'Nov';
      break;
    case 12:
      month = 'Dec';
      break;
    default:
      break;
  }

  return '$month $day, $year';
}


String getBackdropUrl(String? path) {
  const imagebase="https://image.tmdb.org/t/p/w1280";

  if (path != null) {
    return imagebase + path;
  } else {
    return imageplaceHolder;
  }
}


String getPosterUrl(String? path) {
  const imagePost="https://image.tmdb.org/t/p/w500";
  if (path != null) {
    return imagePost + path;
  } else {
    return imageplaceHolder;
  }
}