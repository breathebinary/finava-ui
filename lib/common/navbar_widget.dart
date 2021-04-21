import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final Widget child;
  final double height;

  NavBar({required this.child, this.height = kToolbarHeight});

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> with SingleTickerProviderStateMixin {
  late TabController bottomTabController;

  @override
  void initState() {
    super.initState();
    bottomTabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Material(
        elevation: 8,
        child: Column(
          children: [
            Container(
              color: Colors.blueAccent,
              padding: EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      constraints: BoxConstraints(maxWidth: 1200),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 48.0, top: 8, bottom: 12),
                            child: FlutterLogo(
                              size: 48,
                            ),
                          ),
                          IntrinsicWidth(
                            child: TabBar(
                              labelColor: Colors.black,
                              unselectedLabelColor: Colors.white,
                              indicator: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                              ),
                              tabs: [
                                Tab(text: 'Home'),
                                Tab(text: 'Reports'),
                                Tab(text: 'Orders'),
                                Tab(text: 'Help Center'),
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    constraints: BoxConstraints(maxWidth: 1200),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IntrinsicWidth(
                          child: TabBar(
                            controller: bottomTabController,
                            labelColor: Colors.blueAccent,
                            unselectedLabelColor: Colors.black54,
                            indicator: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            tabs: [
                              Tab(text: 'Dashboard'),
                              Tab(text: 'Features'),
                              Tab(text: 'Crud'),
                              Tab(text: 'Help Center'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
