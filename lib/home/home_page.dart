import 'package:finava/common/navbar_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          NavBar(
            child: Text('Madii Henyu'),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, pos) => ListTile(
                title: Text('List Item $pos'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
