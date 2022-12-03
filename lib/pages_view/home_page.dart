import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherappandroid/Providers/weather_provider.dart';
import 'package:weatherappandroid/Share/Components/Components.dart';
import 'package:weatherappandroid/models/weather_models.dart';
import 'package:weatherappandroid/pages_view/search_page.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {

   var weatherdata =  Provider.of<weatherProvider>(context).weatherdata;

    return Scaffold(
        appBar: AppBar(
          title: Text('Weather App'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SearchWeather();
                    }));
                  },
                  icon: Icon(Icons.search)),
            )
          ],
        ),
        body: weatherdata == null
            ? Center(
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
              )
            : Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 150,),
                      child: Column(
                        children: [
                          defaultWathertext(
                            text: weatherdata.city ?? 'UnDefined',
                            fontsize: 30,
                            color: Colors.black,
                            fontweight: FontWeight.w600,
                          ),
                          defaultWathertext(
                              text: weatherdata.date,
                              fontsize: 16,
                              color: Colors.grey),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        defaultWeatherIcon(weatherIcon: '${weatherdata.getimage()}'),

                        SizedBox(width: 40,),
                        defaultWathertext(text: '${weatherdata.temp.toInt()}', fontsize: 40, color: Colors.black),
                        SizedBox(width: 40,),
                        Column(
                          children: [
                          defaultWathertext(text: 'Max : ${weatherdata.minTemp.toInt()}', fontsize: 14, color: Colors.black),
                          SizedBox(height: 5,),
                          defaultWathertext(text: 'Min : ${weatherdata.maxTemp.toInt()}', fontsize: 14, color: Colors.black),

                          ],
                        ),





                      ],
                    ),
                    SizedBox(height: 30,),
                    defaultWathertext(text: weatherdata!.weatherstateName ?? '   ', fontsize: 40, color: Colors.black,fontweight: FontWeight.w700,)
                  ],
                ),
              ));
  }
}
