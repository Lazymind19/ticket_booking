import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_style.dart';
import 'package:ticket_booking_app/widgets/ticket_tabs.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: Stack(
          children: [
        ListView(children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(10),
                Text(
                  "Tickets",
                  style: Styles.headLineStyle
                      .copyWith(color: Colors.black, fontSize: 30),
                ),
                Gap(20),
                TicketTabs(textOne: "Upcoming", textTwo: "Previous"),
              ],
            ),
          ),
        ]),
      ]),
    );
  }
}
