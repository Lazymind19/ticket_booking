import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';

import '../utils/app_style.dart';
class TicketTabs extends StatelessWidget {
  final String textOne;
  final String textTwo;
  const TicketTabs({Key? key, required this.textOne, required this.textTwo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        decoration: BoxDecoration(),
        child: Row(
          children: [
            /*
                  * AirTickets*/
            Container(
                width: size.width * 0.44,
                padding:
                EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.horizontal(left: Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Text(
                  textOne,
                  style:
                  Styles.headLineStyle4.copyWith(color: Colors.black),
                )),
            Container(
                width: size.width * 0.44,
                padding:
                EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.horizontal(right: Radius.circular(20)),
                  color: Colors.white38,
                ),
                child: Text(
                  textTwo,
                  style:
                  Styles.headLineStyle4.copyWith(color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}
