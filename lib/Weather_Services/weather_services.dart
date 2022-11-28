import 'package:flutter/foundation.dart';

// انا هنا حطيت as ده عبارة عن keyWord للصفحة دي عشان اعمل اكسيس لاي حاجه جوا الفايل ده
// وبستخدم دي ف حالات ان الفايل ده فيه فانكشن كتير وانا ناسي اسمائها فانا اما اعمل كده هيجيبلي الفانكشن اللي جوا ده بس

import 'package:http/http.dart' as http;


class weatherServive {
  void getWeather({
    required String cityName,
  }) async {


    // Get Data Weather
    
    Uri url = Uri.parse(
        'http://api.weatherapi.com/v1/forecast.json?key=ecd534428ea64a279cc192603222811&q=cairo&days=4&aqi=no&alerts=no'
    );

  http.Response response = await http.get(url);


  }
}
