import 'package:flutter/material.dart';
import 'package:jot_somethin/reusable_widgets/header_widgets.dart';
import 'package:jot_somethin/svg_widgets/rendering_svg.dart';

class FutureForecast extends StatelessWidget {
  const FutureForecast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black45,
      margin: const EdgeInsets.only(
        left: 20,
        top: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          headerWidget("Today's Details", false, 0, 25),
          _attributeAndValue("Wind Speed", "1.5 km/h"),
          _attributeAndValue("Sunrise", "6:30 am"),
          _attributeAndValue("Sunset", "6:54 pm"),
          headerWidget("5 Day Forecast", false,60, 25),
          _horizontalDayForecastList(),
          headerWidget("In Summary...", true, 40, 15),
          _summaryMessage("It's hot yo"),
          const Spacer(),
          appName(),
        ],
      ),

    );
  }
  
  Widget _summaryMessage(String message) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        message,
        style: const TextStyle(
          fontSize: 35,
          fontStyle: FontStyle.italic,
          // fontWeight: FontWeight.w500,
        ),
      )
    );
  }

  Widget _horizontalDayForecastList() {
    return SingleChildScrollView (
      padding: const EdgeInsets.only(
        right: 20
      ),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _dayForecast("Tue", "6", "21"),
          _dayForecast("Wed", "6", "21"),
          _dayForecast("Thur", "6", "21"),
          _dayForecast("Fri", "6", "21"),
          _dayForecast("Sat", "6", "21"),
        ],
      ),
    );
  }

  Widget _attributeAndValue(String attribute, String value) {
    return Container(
      margin: const EdgeInsets.only(
        left: 30.0
      ),
      child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: <TableRow>[
          TableRow(
            children: <Widget>[
              Text(
                attribute,
                style: const TextStyle(
                  fontSize: 25,

                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    value,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300
                    )
                  ),
                )
              )
            ]
          ),
        ],
      )
    );
  }

  Widget _dayForecast(String day, String earlyTemp, String dayTemp) {
    return Container(
      height: 120,
      width: 120,
      margin: const EdgeInsets.only(
        right: 10,
        left: 10,
      ),
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10
      ),
      decoration: BoxDecoration(
        // color: Colors.green,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: Colors.black,

        )
      ),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              day,
              style: const TextStyle(
                fontSize: 24
              )
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: svgGridIcon(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: RichText(
              text: TextSpan(
                  text: "$earlyTemp°/",
                  style: const TextStyle(
                    color: Color(0xFF58595B),
                  ),
                  children: [
                    TextSpan(
                      text: "$dayTemp°",
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16
                      )
                    )
                  ]
              ),
            ),
          )
        ],
      )
    );
  }
}
