import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

class WeeklySalesStatCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text(
              'Weekly Sales Stats',
              style: Theme.of(context).textTheme.headline6,
            ),
            subtitle: Text('890,344'),
            trailing: Icon(Icons.more_horiz),
          ),
          // Container(height: 240, child: GaugeChart.withSampleData()),
          // Container(
          //   height: 240,
          //   child: PieChart(
          //     PieChartData(
          //       // read about it in the PieChartData section
          //       startDegreeOffset: 180,
          //       borderData: FlBorderData(
          //         show: false,
          //       ),
          //       sectionsSpace: 0,
          //       centerSpaceRadius: double.infinity,
          //       sections: showingSections(),
          //     ),
          //     swapAnimationDuration: Duration(milliseconds: 150), // Optional
          //     swapAnimationCurve: Curves.linear, // Optional
          //   ),
          // ),
          SizedBox(
            height: 96,
          ),
          CircularPercentIndicator(
            radius: 176.0,
            backgroundColor: Colors.white,
            progressColor: Colors.blue.shade500,
            percent: .74,
            lineWidth: 12,
            backgroundWidth: 12,
            fillColor: Colors.transparent,
            circularStrokeCap: CircularStrokeCap.round,
            arcBackgroundColor: Colors.blue.shade500.withOpacity(0.1),
            arcType: ArcType.HALF,
            center: Container(
              height: 128,
              width: 128,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '74%',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: Color(0xFF3F4254),
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  Text(
                    'Progress',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: Colors.blueGrey.shade200,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Flexible(
                child: ListTile(
                  title: Text('\$2,034'),
                  subtitle: Text('Authors sales'),
                  leading: SvgPicture.asset(
                    'assets/svg/icons/Shopping/Cart3.svg',
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ),
              Flexible(
                child: ListTile(
                  title: Text('\$706'),
                  subtitle: Text('Commission'),
                  leading: SvgPicture.asset(
                    'assets/svg/icons/Shopping/Chart-pie.svg',
                    color: Colors.deepOrangeAccent,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: ListTile(
                  title: Text('\$49'),
                  subtitle: Text('Average Bid'),
                  leading: SvgPicture.asset(
                    'assets/svg/icons/Shopping/Cart3.svg',
                    color: Colors.greenAccent,
                  ),
                ),
              ),
              Flexible(
                child: ListTile(
                  title: Text('\$5.8M'),
                  subtitle: Text('All time sales'),
                  leading: SvgPicture.asset(
                    'assets/svg/icons/Shopping/Barcode-read.svg',
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
/*
/// Gauge chart example, where the data does not cover a full revolution in the
/// chart.

class GaugeChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  GaugeChart(this.seriesList, {required this.animate});

  /// Creates a [PieChart] with sample data and no transition.
  factory GaugeChart.withSampleData() {
    return new GaugeChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.PieChart(seriesList,
        animate: animate,
        // Configure the width of the pie slices to 30px. The remaining space in
        // the chart will be left as a hole in the center. Adjust the start
        // angle and the arc length of the pie so it resembles a gauge.
        defaultRenderer: new charts.ArcRendererConfig(
          arcWidth: 16,
          startAngle: pi,
          arcLength: pi,
        ));
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<GaugeSegment, String>> _createSampleData() {
    final data = [
      new GaugeSegment('Low', 75),
      new GaugeSegment('Acceptable', 25),
      // new GaugeSegment('High', 50),
      // new GaugeSegment('Highly Unusual', 5),
    ];

    return [
      new charts.Series<GaugeSegment, String>(
        id: 'Segments',
        domainFn: (GaugeSegment segment, _) => segment.segment,
        measureFn: (GaugeSegment segment, _) => segment.size,
        data: data,
      )
    ];
  }
}

/// Sample data type.
class GaugeSegment {
  final String segment;
  final int size;

  GaugeSegment(this.segment, this.size);
}

List<PieChartSectionData> showingSections() {
  return List.generate(
    2,
    (i) {
      final isTouched = i == 0;
      final double opacity = isTouched ? 1 : 0.6;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee).withOpacity(opacity),
            value: 75,
            title: '',
            radius: 4,
            titleStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color(0xff044d7c)),
            titlePositionPercentageOffset: 0.55,
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250).withOpacity(opacity),
            value: 25,
            title: '',
            radius: 4,
            titleStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color(0xff90672d)),
            titlePositionPercentageOffset: 0.55,
          );
        default:
          throw NullThrownError();
      }
    },
  );
}
*/
