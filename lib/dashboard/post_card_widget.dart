import 'package:finava/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostCard extends StatelessWidget {
  final String imageUrl;

  const PostCard({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Text(
              '7 Hours ago',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: ThemeColors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            trailing: Container(
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
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'PitStop - Multiple Email',
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 17.55,
                ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Pitstop creates quick email campaigns.'
            'We help to strengthen your brand'
            'for your every purpose.',
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: ThemeColors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              BoxedSvgIcon(imageUrl: 'assets/svg/avatars/001-boy.svg'),
              SizedBox(width: 16,),
              BoxedSvgIcon(imageUrl: 'assets/svg/avatars/028-girl-16.svg'),
              SizedBox(width: 16,),
              BoxedSvgIcon(imageUrl: 'assets/svg/avatars/024-boy-9.svg'),
            ],
          ),
        ],
      ),
    );
  }
}



class BoxedSvgIcon extends StatelessWidget {
  final String imageUrl;

  const BoxedSvgIcon({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.04),
          borderRadius: BorderRadius.circular(4)),
      padding: EdgeInsets.all(12),
      child: SvgPicture.asset(
        imageUrl,
        height: 24,
        width: 24,
      ),
    );
  }
}

