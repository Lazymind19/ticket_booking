import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_style.dart';
class IconTextContainer extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconTextContainer({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.grey.shade500,
          ),
          Gap(10),
          Text(
            text,
            style: Styles.textStyle
                .copyWith(color: Colors.grey.shade500),
          )
        ],
      ),
    );
  }
}
