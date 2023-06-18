import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hopex/pie-chart-sec.dart';

import 'main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'FL Pie Chart';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primaryColor: Colors.blueGrey[900]),
    home: HomePage(),
  );}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Padding(
      padding: const EdgeInsets.all(8),
      child: PageView(
        children: [
          PieChartPage(),
        ],
      ),
    ),
  );
}




class PieChartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PieChartPageState();
}

class PieChartPageState extends State {
  // int touchedIndex;

  @override
  Widget build(BuildContext context) => Card(
    child: Column(
      children: <Widget>[
        Expanded(
          child: PieChart(
            PieChartData(
              sections: getsections(),

              // pieTouchData: PieTouchData(
              //   touchCallback: (pieTouchResponse) {
              //     setState(() {
              //       if (pieTouchResponse.touchInput is FlLongPressEnd ||
              //           pieTouchResponse.touchInput is FlPanEnd) {
              //         touchedIndex = -1;
              //       } else {
              //         touchedIndex = pieTouchResponse.touchedSectionIndex;
              //       }
              //     });
              //   },
              // ),
              borderData: FlBorderData(show: false),
              sectionsSpace: 0,
              centerSpaceRadius: 40,
              //sections: getSections(touchedIndex),
            ),
          ),
        ),

      ],
    ),
  );
}