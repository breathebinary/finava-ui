import 'package:finava/theme.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class InfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            alignment: Alignment.topRight,
            image: Svg('assets/svg/shapes/abstract-4.svg', size: Size(128, 128), color: Colors.black12),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Headline',
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: ThemeColors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '3:30PM - 4:20PM',
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: ThemeColors.green1BC5BD,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Craft a headline that is informative and will capture readers',
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
          ),
        ],
      ),
    );
  }
}
