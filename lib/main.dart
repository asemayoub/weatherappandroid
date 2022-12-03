import 'package:flutter/material.dart';
import 'package:weatherappandroid/Providers/weather_provider.dart';
import 'package:weatherappandroid/models/weather_models.dart';
import 'package:weatherappandroid/pages_view/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  weatherModel? weather;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context){
        return weatherProvider();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}



