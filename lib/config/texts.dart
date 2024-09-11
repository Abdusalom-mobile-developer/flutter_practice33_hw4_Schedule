class Texts {
  static DateTime currentDate = DateTime.now();
  static List<String> currentDateTaker() {
    String currenMonth;
    if (currentDate.month == 1) {
      currenMonth = "January";
    } else if (currentDate.month == 2) {
      currenMonth = "February";
    } else if (currentDate.month == 3) {
      currenMonth = "March";
    } else if (currentDate.month == 4) {
      currenMonth = "April";
    } else if (currentDate.month == 5) {
      currenMonth = "May";
    } else if (currentDate.month == 6) {
      currenMonth = "June";
    } else if (currentDate.month == 7) {
      currenMonth = "July";
    } else if (currentDate.month == 8) {
      currenMonth = "August";
    } else if (currentDate.month == 9) {
      currenMonth = "September";
    } else if (currentDate.month == 10) {
      currenMonth = "October";
    } else if (currentDate.month == 11) {
      currenMonth = "November";
    } else {
      currenMonth = "December";
    }

    return [
      currenMonth,
      currentDate.day.toString(),
      currentDate.year.toString()
    ];
  }
  static const String title = "Schedule";
  static const String mon = "Mon";
  static const String tue = "Tue";
  static const String wed = "Wed";
  static const String thu = "Thu";
  static const String fri = "Fri";
  static const String sat = "Sat";
  static const String sun = "Sun";
  static const String bottomText1 = "Watered";
  static const String bottomText2 = "Planned to water";
  static const String buttonText = "Schedule watering";
}
