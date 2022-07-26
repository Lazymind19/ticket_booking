import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/app_style.dart';
class CustomContainer extends StatelessWidget {
  bool? isColor;
   CustomContainer({Key? key, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Container(
        padding : const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 3, color: isColor == null ? Colors.white : Styles.orangeColor)
        ),
      );
  }
}
