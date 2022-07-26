import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/utils/app_style.dart';
import 'package:ticket_booking_app/widgets/custom_column_text.dart';
import 'package:ticket_booking_app/widgets/ticket_tabs.dart';

import '../utils/app_layout.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
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
                Gap(10),
                Container(
                  padding: EdgeInsets.only(left: 30),
                  child: TicketView(isColor: true),
                ),
                Gap(20),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  color: Colors.white,
                  child: Column( 
                    children: [
                      //passenger and passport
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          CustomColumnText(textFirst: "Passenger1T", textSecond: "Passenger", alignment: CrossAxisAlignment.start,),
                          CustomColumnText(textFirst: "65665dfdfd", textSecond: "passpord",alignment: CrossAxisAlignment.end,)
                        ],
                      ),
                      Gap(20),
                      //ticket and booking code
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomColumnText(textFirst: "000595 3445 r3434", textSecond: "E-Ticket Numer", alignment: CrossAxisAlignment.start),
                          CustomColumnText(textFirst: "BDFKE6F", textSecond: "Booking Code", alignment: CrossAxisAlignment.end)
                        ],
                      ),
                      Gap(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomColumnText(textFirst: "VISA 543****34", textSecond: "Payment Method", alignment: CrossAxisAlignment.start),
                          CustomColumnText(textFirst: "\$249.99", textSecond: "Price", alignment: CrossAxisAlignment.end)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ]),
    );
  }
}
