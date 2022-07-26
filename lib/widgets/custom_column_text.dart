import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_style.dart';
class CustomColumnText extends StatelessWidget {
  final String textFirst;
  final String textSecond;
  final CrossAxisAlignment alignment;
  const CustomColumnText({Key? key, required this.textFirst, required this.textSecond, required this.alignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(textFirst, style: Styles.headLineStyle3.copyWith(color: Colors.black),),
        Gap(8),
        Text(textSecond, style: Styles.textStyle.copyWith(color: Colors.black26),)
      ],
    );
  }
}
