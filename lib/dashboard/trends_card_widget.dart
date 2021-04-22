import 'package:finava/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrendsCard extends StatelessWidget {
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
            trailing: IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ),
          ...tiles,
        ],
      ),
    );
  }
}

const tiles = [
  TrendListTile(
      trailing: '+82',
      imageUrl: 'assets/svg/misc/006-plurk.svg',
      title: 'Top Authors',
      subtitle: 'Mark, Rowling, Ester'),
  TrendListTile(
      trailing: '+280',
      imageUrl: 'assets/svg/misc/015-telegram.svg',
      title: 'Popular Authors',
      subtitle: 'Randy, Steve, Mike'),
  TrendListTile(
      trailing: '+4500',
      imageUrl: 'assets/svg/misc/003-puzzle.svg',
      title: 'New Users',
      subtitle: 'John, Pat, Jimmy'),
  TrendListTile(
      trailing: '+4500',
      imageUrl: 'assets/svg/misc/014-kickstarter.svg',
      title: 'Active Customers',
      subtitle: 'Sandra, Tim, Louis'),
  TrendListTile(
      trailing: '+4500',
      imageUrl: 'assets/svg/misc/005-bebo.svg',
      title: 'BestSeller Theme',
      subtitle: 'Disco, Retro, Sports'),
];

class TrendListTile extends StatelessWidget {
  final String trailing;
  final String imageUrl;
  final String title;
  final String subtitle;

  const TrendListTile(
      {Key? key,
      required this.trailing,
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
        subtitle: Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: ThemeColors.blueB5B5C3,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.04),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            '$trailing\$',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Color(0xFF7E8299),
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
          ),
        ),
      ),
    );
  }
}
