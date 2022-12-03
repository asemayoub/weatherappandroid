import 'package:flutter/cupertino.dart';
import 'package:weatherappandroid/models/weather_models.dart';

class weatherProvider extends ChangeNotifier {

  weatherModel? _weatherdata;

  set weatherdata(weatherModel? weather) {

    _weatherdata = weather;

    notifyListeners();

  }

  weatherModel? get weatherdata => _weatherdata;


}