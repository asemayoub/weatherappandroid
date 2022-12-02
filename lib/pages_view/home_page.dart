import 'package:flutter/material.dart';
import 'package:weatherappandroid/models/weather_models.dart';
import 'package:weatherappandroid/pages_view/search_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    weatherModel? weatherdata;
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(onPressed: () {

              Navigator.push(context,MaterialPageRoute(

                  builder: (context) {

                return SearchWeather();

              })

              );


            }, icon: Icon(Icons.search)),
          )
        ],
      ),

      body: weatherdata != null ? Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'There is no weather 😞 ',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'Starting Searching Now 😄',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ) : Container()
    );
  }
}
