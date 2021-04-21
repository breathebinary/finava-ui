import 'package:finava/common/profile_navbar_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              color: Theme.of(context).primaryColor,
              padding: EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      constraints: BoxConstraints(maxWidth: 1280),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 48.0, bottom: 12),
                            child: Image.asset(
                              'assets/logos/logo-letter-9.png',
                              height: 48,
                              width: 48,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: IntrinsicWidth(
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
                                labelStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500
                                ),

                                tabs: [
                                  Tab(text: 'Home'),
                                  Tab(text: 'Reports'),
                                  Tab(text: 'Orders'),
                                  Tab(text: 'Help Center'),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          ...actions,
                          SizedBox(width: 16,),
                          ProfileCard(),
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
                    constraints: BoxConstraints(maxWidth: 1280),
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

List<Widget> actions = [
  IconButton(
    color: Colors.white,
    icon: SvgPicture.asset(
      'assets/svg/icons/General/Search.svg',
      color: Colors.white,
    ),
    onPressed: () {},
  ),
  IconButton(
    icon: SvgPicture.asset('assets/svg/icons/Code/Compiling.svg',
        color: Colors.white),
    onPressed: () {},
  ),
  IconButton(
    icon: SvgPicture.asset('assets/svg/icons/Media/Equalizer.svg',
        color: Colors.white),
    onPressed: () {},
  ),
  IconButton(
    icon: SvgPicture.asset('assets/svg/icons/Shopping/Cart3.svg',
        color: Colors.white),
    onPressed: () {},
  ),
  IconButton(
    icon: SvgPicture.asset('assets/svg/icons/Layout/Layout-4-blocks.svg',
        color: Colors.white),
    onPressed: () {},
  ),
  IconButton(
    icon: SvgPicture.asset('assets/svg/icons/Communication/Group-chat.svg',
        color: Colors.white),
    onPressed: () {},
  )
];
