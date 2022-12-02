class weatherModel {
  String date;
  double temp;
  double maxTemp;
  double minTemp;
  String weatherstateName;

  weatherModel({required this.date,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherstateName});

  // هنا انا مليت بيانات كل الميثود المطلوبة عشان استدعيها ف اي مكان برحتي
  // لكن البيانات دي خاصة باي حاجه تيجي من النت فقط مينفع تتملي غير ببيانات api

  // Factory Constructor : بستخدمها هنا عشان اعمل ريترن لاوبجكت واقدر احط الداتا في الاوبجت ده
  // بالتالي اقدر اخليه non nullable


  factory weatherModel.fromjson(dynamic, data){
    var jsonData = data['forecast']['forecastday'][0]['day'];


    return weatherModel(
        date: data['location']['localtime'],
        temp: jsonData['avgtemp_c'],
        maxTemp: jsonData['maxtemp_c'],
        minTemp: jsonData['mintemp_f'],
        weatherstateName: jsonData['condition']['text'],
    );
  }
  @override
  String toString() {
    // TODO: implement toString
    // هنا انا بديله البيانات اللي هيرجعها ف الطباعه
    return 'date = $date temp = $temp maxtemp = $maxTemp mintemp = $minTemp status = $weatherstateName';
  }



}
