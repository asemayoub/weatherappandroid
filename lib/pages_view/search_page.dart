import 'package:flutter/material.dart';
import 'package:weatherappandroid/models/weather_models.dart';

import '../Weather_Services/weather_services.dart';


class SearchWeather extends StatelessWidget {

  SearchWeather({this.updateUi});
  VoidCallback? updateUi;

  @override
  Widget build(BuildContext context) {
    String? CityName;

    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              onSubmitted: (data) async {
                CityName = data;
                weatherServive service = weatherServive();
                weatherModel weather =
                    await service.getWeather(cityName: CityName!);

                weatherdata = weather;
                updateUi!();

                Navigator.pop(context);




              },
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                label: Text(
                  'Search City',
                  style: TextStyle(fontSize: 18),
                ),
                hintText: 'Enter City',
                border: OutlineInputBorder(),
                suffixIcon: Icon(
                  Icons.search,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

weatherModel? weatherdata;


