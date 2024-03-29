import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

import 'package:finance_app/ui/helpers/helpers.dart';

class FinanceDataTopBar extends StatelessWidget {
  const FinanceDataTopBar({
    Key? key,
    required this.currency,
    required this.icon
  }) : super(key: key);

  final String currency;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RawMaterialButton(
          shape: const CircleBorder(),
          child: LineIcon(LineIcons.arrowLeft),
          onPressed: () => navigateBack(context)
        ),
        const SizedBox( height: 10 ),
        CircleAvatar(
          maxRadius: 25,
          backgroundColor: Colors.indigo,
          child: LineIcon(
            icon,
            color: Colors.white,
          ),
        ),
        const SizedBox( width: 8 ),
        Text(
          currency,
          style: Theme.of(context).textTheme.bodyText2?.copyWith(
            fontSize: 22
          ),
        )
      ],
    );
  }
}