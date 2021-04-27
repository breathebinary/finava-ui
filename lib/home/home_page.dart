import 'package:finava/common/navbar_widget.dart';
import 'package:finava/dashboard/info_card_widget.dart';
import 'package:finava/dashboard/post_card_widget.dart';
import 'package:finava/dashboard/sales_stat_card_widget.dart';
import 'package:finava/dashboard/trends_card_widget.dart';
import 'package:finava/dashboard/weekly_sales_stat_card_2_widget.dart';
import 'package:finava/dashboard/weekly_sales_stat_card_widget.dart';
import 'package:finava/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                child: Column(
                  children: [
                    Container(
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
                          ),
                          SizedBox(height: 24),
                          Row(
                            children: [
                              Flexible(child: InfoCard()),
                              SizedBox(width: 16),
                              Flexible(child: InfoCard()),
                              SizedBox(width: 16),
                              Flexible(child: InfoCard()),
                            ],
                          ),
                          SizedBox(height: 24),
                          Row(
                            children: [
                              Flexible(child: FilesCard()),
                              SizedBox(width: 16),
                              Flexible(child: ArrivalsCard()),
                            ],
                          ),
                          SizedBox(height: 24),
                          Row(
                            children: [
                              Flexible(
                                  child: PostCard(
                                imageUrl: 'assets/svg/misc/006-plurk.svg',
                              )),
                              SizedBox(width: 16),
                              Flexible(
                                  child: PostCard(
                                imageUrl: 'assets/svg/misc/015-telegram.svg',
                              )),
                              SizedBox(width: 16),
                              Flexible(
                                  child: PostCard(
                                imageUrl: 'assets/svg/misc/003-puzzle.svg',
                              )),
                            ],
                          ),
                          SizedBox(height: 24),
                          Row(
                            children: [
                              Flexible(
                                flex: 1,
                                child: WeeklySalesStatCard2(),
                              ),
                              SizedBox(width: 16),
                              Flexible(
                                child: ArrivalsCard(),
                                flex: 2,
                              )
                            ],
                          ),
                          SizedBox(height: 64),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ConstrainedBox(
                            constraints: BoxConstraints(maxWidth: 1280),
                            child: DefaultTextStyle(
                              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                color: Colors.grey,
                              ),
                              child: Row(
                                children: [
                                  Text('2021 \u00a9'),
                                  SizedBox(
                                    width: 24,
                                  ),
                                  Text('Finava'),
                                  Spacer(),
                                  Text('About'),
                                  SizedBox(
                                    width: 24,
                                  ),
                                  Text('Team'),
                                  SizedBox(
                                    width: 24,
                                  ),
                                  Text('Contact'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FilesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              'Trends',
              style: Theme.of(context).textTheme.headline6,
            ),
            subtitle: Text(
              'More than 400+ new members',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: ThemeColors.blueB5B5C3,
                  ),
            ),
            trailing: DropdownButton(
              hint: Text('Create'),
              items: [
                DropdownMenuItem(child: Text('Order')),
                DropdownMenuItem(child: Text('Something')),
                DropdownMenuItem(child: Text('Here')),
              ],
            ),
          ),
          ...filesTiles,
        ],
      ),
    );
  }
}

class ArrivalsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              'Trends',
              style: Theme.of(context).textTheme.headline6,
            ),
            subtitle: Text(
              'More than 400+ new members',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: ThemeColors.blueB5B5C3,
                  ),
            ),
            trailing: DropdownButton(
              hint: Text('Create'),
              items: [
                DropdownMenuItem(child: Text('Order')),
                DropdownMenuItem(child: Text('Something')),
                DropdownMenuItem(child: Text('Here')),
              ],
            ),
          ),
          ...arrivalsTile,
        ],
      ),
    );
  }
}

const filesTiles = [
  FileListTile(
      trailing: 'ReactJS, HTML',
      trailing1: '4600 Users',
      trailing2: '5.4MB',
      imageUrl: 'assets/svg/misc/006-plurk.svg',
      title: 'Top Authors',
      subtitle: 'Successful Fellas'),
  FileListTile(
      trailing: 'Python, MySQL',
      trailing1: '7200 Users',
      trailing2: '2.8MB',
      imageUrl: 'assets/svg/misc/015-telegram.svg',
      title: 'Popular Authors',
      subtitle: 'Most Successful'),
  FileListTile(
      trailing: 'Laravel, Metronic',
      trailing1: '890 Users',
      trailing2: '1.5MB',
      imageUrl: 'assets/svg/misc/003-puzzle.svg',
      title: 'New Users',
      subtitle: 'Awesome Users'),
  FileListTile(
      trailing: 'AngularJS, C#',
      trailing1: '6370 Users',
      trailing2: '890KB',
      imageUrl: 'assets/svg/misc/014-kickstarter.svg',
      title: 'Active Customers',
      subtitle: 'Best Customers'),
  FileListTile(
      trailing: 'ReactJS, Ruby',
      trailing1: '354 Users',
      trailing2: '500KB',
      imageUrl: 'assets/svg/misc/005-bebo.svg',
      title: 'BestSeller Theme',
      subtitle: 'Amazing Templates'),
];
const arrivalsTile = [
  NewArrivalsTile(
      trailing: 'ReactJS, HTML',
      trailing1: '4600 Users',
      trailing2: '5.4MB',
      imageUrl: 'assets/svg/misc/006-plurk.svg',
      title: 'Top Authors',
      subtitle: 'Successful Fellas'),
  NewArrivalsTile(
      trailing: 'Python, MySQL',
      trailing1: '7200 Users',
      trailing2: '2.8MB',
      imageUrl: 'assets/svg/misc/015-telegram.svg',
      title: 'Popular Authors',
      subtitle: 'Most Successful'),
  NewArrivalsTile(
      trailing: 'Laravel, Metronic',
      trailing1: '890 Users',
      trailing2: '1.5MB',
      imageUrl: 'assets/svg/misc/003-puzzle.svg',
      title: 'New Users',
      subtitle: 'Awesome Users'),
  NewArrivalsTile(
      trailing: 'AngularJS, C#',
      trailing1: '6370 Users',
      trailing2: '890KB',
      imageUrl: 'assets/svg/misc/014-kickstarter.svg',
      title: 'Active Customers',
      subtitle: 'Best Customers'),
  NewArrivalsTile(
      trailing: 'ReactJS, Ruby',
      trailing1: '354 Users',
      trailing2: '500KB',
      imageUrl: 'assets/svg/misc/005-bebo.svg',
      title: 'BestSeller Theme',
      subtitle: 'Amazing Templates'),
];

class FileListTile extends StatelessWidget {
  final String trailing;
  final String trailing1;
  final String trailing2;
  final String imageUrl;
  final String title;
  final String subtitle;

  const FileListTile(
      {Key? key,
      required this.trailing,
      required this.trailing1,
      required this.trailing2,
      required this.imageUrl,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.04),
                borderRadius: BorderRadius.circular(4)),
            padding: EdgeInsets.all(12),
            child: SvgPicture.asset(
              imageUrl,
              // color: Colors.red,
              height: 24,
              width: 24,
            ),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: ThemeColors.blue3F4254,
                ),
          ),
          Spacer(),
          Text(
            '$trailing',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: ThemeColors.blueB5B5C3,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
          ),
          SizedBox(
            width: 36,
          ),
          Text(
            '$trailing1',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: ThemeColors.blueB5B5C3,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
          ),
          SizedBox(
            width: 24,
          ),
          Text(
            '$trailing2',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
          ),
        ],
      ),
    );
  }
}

class NewArrivalsTile extends StatelessWidget {
  final String trailing;
  final String trailing1;
  final String trailing2;
  final String imageUrl;
  final String title;
  final String subtitle;

  const NewArrivalsTile(
      {Key? key,
      required this.trailing,
      required this.trailing1,
      required this.trailing2,
      required this.imageUrl,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.04),
              borderRadius: BorderRadius.circular(4)),
          padding: EdgeInsets.all(12),
          child: SvgPicture.asset(
            imageUrl,
            // color: Colors.red,
            height: 24,
            width: 24,
          ),
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: ThemeColors.blue3F4254,
              ),
        ),
        subtitle: Text(subtitle),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$trailing',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: ThemeColors.blueB5B5C3,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
            ),
            SizedBox(
              width: 36,
            ),
            Text(
              '$trailing1',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: ThemeColors.blueB5B5C3,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
            ),
            SizedBox(
              width: 24,
            ),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.black.withOpacity(0.04),
              ),
              child: Icon(
                Icons.arrow_forward_outlined,
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}
