import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

import '/constants/contants.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${Constants.welcomeBack} Axel!',
              style: Theme.of(context).textTheme.bodyText1
            ),
            const SizedBox( height: 5 ),
            Text(
              Constants.letsDo,
              style: Theme.of(context).textTheme.headline2?.copyWith(
                fontWeight: FontWeight.w400,
                color: Theme.of(context).colorScheme.secondary
              ),
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          maxRadius: 25,
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: LineIcon(
            LineIcons.alternateGithub,
            color: Theme.of(context).scaffoldBackgroundColor,
            size: 35,
          ),
        )
      ],
    );
  }
}