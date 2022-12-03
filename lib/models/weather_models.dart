class weatherModel {
  String date;
  double temp;
  double maxTemp;
  double minTemp;
  String weatherstateName;
  String? city;

  weatherModel({required this.date,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherstateName,
    this.city,
  });

  // هنا انا مليت بيانات كل الميثود المطلوبة عشان استدعيها ف اي مكان برحتي
  // لكن البيانات دي خاصة باي حاجه تيجي من النت فقط مينفع تتملي غير ببيانات api

  // Factory Constructor : بستخدمها هنا عشان اعمل ريترن لاوبجكت واقدر احط الداتا في الاوبجت ده
  // بالتالي اقدر اخليه non nullable


  factory weatherModel.fromjson(dynamic, data){
    var jsonData = data['forecast']['forecastday'][0]['day'];


    return weatherModel(
      city: data['location']['name'],
      date: data['location']['localtime'],
      temp: jsonData['avgtemp_c'],
      maxTemp: jsonData['maxtemp_c'],
      minTemp: jsonData['mintemp_f'],
      weatherstateName: jsonData['condition']['text'],
    );
  }

  // @override
  // String toString() {
  //   // TODO: implement toString
  //   // هنا انا بديله البيانات اللي هيرجعها ف الطباعه
  //   return 'date = $date temp = $temp maxtemp = $maxTemp mintemp = $minTemp status = $weatherstateName';
  // }

  String? getimage() {
    if (weatherstateName == 'Sunny') {
      return 'assets/weather_icon/113.png';
    }else if (weatherstateName == 'Cloudy') {return 'assets/weather_icon/119.png';}
    else if (weatherstateName == 'Overcast') {return 'assets/weather_icon/122.png';}
    else if (weatherstateName == 'Mist') {return 'assets/weather_icon/143.png';}
    else if (weatherstateName == 'Patchy rain possible') {return 'assets/weather_icon/176.png';}
    else if (weatherstateName == 'Patchy snow possible') {return 'assets/weather_icon/179.png';}
    else if (weatherstateName == 'Patchy sleet possible') {return 'assets/weather_icon/182.png';}
    else if (weatherstateName == 'Patchy freezing drizzle possible') {return 'assets/weather_icon/185.png';}
    else if (weatherstateName == 'Thundery outbreaks possible') {return 'assets/weather_icon/200.png';}
    else if (weatherstateName == 'Blowing snow') {return 'assets/weather_icon/227.png';}
    else if (weatherstateName == 'Blizzard') {return 'assets/weather_icon/230.png';}
    else if (weatherstateName == 'Fog') {return 'assets/weather_icon/248.png';}
    else if (weatherstateName == 'Freezing fog') {return 'assets/weather_icon/230.png';}
    else if (weatherstateName == 'Blizzard') {return 'assets/weather_icon/260.png';}
    else if (weatherstateName == 'Partly cloudy') {return 'assets/weather_icon/116.png';}
    else if (weatherstateName == 'Patchy light rain') {return 'assets/weather_icon/293.png';}
    else if (weatherstateName == 'Light rain') {return 'assets/weather_icon/296.png';}
    else if (weatherstateName == 'Heavy rain') {return 'assets/weather_icon/308.png';}

  }
}
