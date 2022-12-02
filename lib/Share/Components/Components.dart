import 'package:flutter/material.dart';

class defaultWathertext extends StatelessWidget {
  final String text;

  final double fontsize;

  final Color color;

  FontWeight? fontweight;

  defaultWathertext(
      {required this.text, required this.fontsize, required this.color,this.fontweight});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '$text',
        style: TextStyle(
            fontSize: fontsize, color: color, fontWeight: fontweight),
      ),
    );
  }
}
class defaultWeatherIcon extends StatelessWidget {

  final String weatherIcon;

  const defaultWeatherIcon({super.key, required this.weatherIcon});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 75,
      height: 75,

      child: Image.asset('$weatherIcon'),
    );
  }
}
