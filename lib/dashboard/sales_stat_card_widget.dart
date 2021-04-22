import 'package:finava/widgets/sliver_grid_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SalesStatCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.shade100,
      ),
      child: Stack(
        children: [
          Positioned(
              child: Container(
            color: Theme.of(context).primaryColor,
            height: 256,
          )),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sales Stat',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    DropdownButton(items: [
                      DropdownMenuItem(child: Text('Order')),
                      DropdownMenuItem(child: Text('Something')),
                      DropdownMenuItem(child: Text('Here')),
                    ])
                  ],
                ),
                // Spacer(),
                SizedBox(
                  height: 150,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    height: 128,
                  ),
                  itemCount: stats.length,
                  itemBuilder: (context, pos) {
                    var e = stats[pos];
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            e.iconPath,
                            height: 36,
                            width: 36,
                            color: e.color,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            e.name,
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: e.color),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Stat {
  final String name;
  final String iconPath;
  final Color color;

  Stat(this.name, this.iconPath, this.color);
}

var stats = [
  Stat('Weekly sales', 'assets/svg/icons/Media/Equalizer.svg', Colors.purple),
  Stat('New Users', 'assets/svg/icons/Communication/Add-user.svg', Colors.teal),
  Stat('Item Orders', 'assets/svg/icons/Design/Layers.svg', Colors.pinkAccent),
  Stat('Bug Reports', 'assets/svg/icons/Communication/Urgent-mail.svg',
      Colors.orangeAccent),
];
