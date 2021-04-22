import 'package:finava/common/navbar_widget.dart';
import 'package:finava/dashboard/sales_stat_card_widget.dart';
import 'package:finava/dashboard/trends_card_widget.dart';
import 'package:finava/dashboard/weekly_sales_stat_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Material(
      color: Colors.grey.shade200,
      child: Container(
        child: Column(
          children: [
            NavBar(
              child: Text('Madii Henyu'),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  constraints: BoxConstraints(maxWidth: 1280),
                  child: Column(
                    children: [
                      SizedBox(height: 24),
                      Container(
                        height: 540,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Flexible(child: SalesStatCard()),
                            SizedBox(width: 16),
                            Flexible(child: WeeklySalesStatCard()),
                            SizedBox(width: 16),
                            Flexible(child: TrendsCard()),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
