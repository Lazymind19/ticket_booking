import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/hotel_screen.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/utils/app_style.dart';
import 'package:ticket_booking_app/utils/hotel_info_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          "Book Tickets",
                          style: Styles.headLineStyle2,
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.flight,
                        color: Colors.blue,
                        size: 50,
                      ),
                    ),
                  ],
                ),
                const Gap(10),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_filled,
                        size: 20,
                        color: Colors.grey.shade500,
                      ),
                      const Gap(5),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flights", style: Styles.headLineStyle2,),
                    InkWell(
                      onTap: (){},
                        child: Text("View all", style: Styles.headLineStyle4,))
                  ],
                )
              ],
            ),
          ),
          Gap(10),
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TicketView(),
                TicketView(),
              ],
            ),
          ),
          Gap(5),
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hotels", style: Styles.headLineStyle2 .copyWith(color: Colors.black),),
                InkWell(
                  onTap: (){},
                  child: Text("View all", style: Styles.headLineStyle4,),
                )
              ],
            ),
          ),
          Gap(10),
         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Row(
             children: hotelList.map((hotel) => HotelScreen(hotels: hotel)).toList(),
           ),
         )
        ],
      ),
    );
  }
}
