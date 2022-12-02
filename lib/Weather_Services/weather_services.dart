import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/foundation.dart';


// انا هنا حطيت as ده عبارة عن keyWord للصفحة دي عشان اعمل اكسيس لاي حاجه جوا الفايل ده
// وبستخدم دي ف حالات ان الفايل ده فيه فانكشن كتير وانا ناسي اسمائها فانا اما اعمل كده هيجيبلي الفانكشن اللي جوا ده بس

import 'package:http/http.dart' as http;
import 'package:weatherappandroid/models/weather_models.dart';

class weatherServive {
  String baseurl = 'http://api.weatherapi.com/v1';
  String apikey = 'ecd534428ea64a279cc192603222811';

  Future<weatherModel> getWeather({
    required String cityName,
  }) async {
    // Get Data Weather

    Uri url = Uri.parse(
      // هنا انا بدل مكتب الرابط كامل قسمته فوق عشان لو اتغير فيه اي حاجه اقدر اعدلها ببساطة

        '$baseurl/forecast.json?key=$apikey&q=$cityName&days=4'
    );

    http.Response response = await http.get(url);

    // Convert Json Data
    Map<String, dynamic> data = jsonDecode(response.body);






// هنا انا بستدعي الموديل اللي عملته فيه البيانات

weatherModel weather = weatherModel.fromjson(dynamic, data);

    return weather;

  }
}
