import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_style.dart';
import 'package:ticket_booking_app/widgets/icon_text_container.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Gap(20),
          Text(
            "What are \nyou searching for??",
            style: Styles.headLineStyle
                .copyWith(fontSize: 35, color: Colors.black),
          ),
          FittedBox(
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
                        "AirTickets",
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
                        "Hotels",
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.black),
                      )),
                ],
              ),
            ),
          ),
          Gap(20),
          /*
          * Departure*/
          const IconTextContainer(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          const Gap(20),
          /*Arrival */
          const IconTextContainer(
              icon: Icons.flight_land_rounded, text: "Arrival"),
          const Gap(20),
          /*find Ticket*/
          Container(
            height: 40,
            child: Center(
              child: InkWell(
                onTap: () {},
                child: Text(
                  "Find Ticket",
                  style: Styles.headLineStyle3.copyWith(color: Colors.white),
                ),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.blue),
          ),
          Gap(30),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Upcoming Flights",
                style: Styles.headLineStyle2.copyWith(color: Colors.black),
              ),
              InkWell(
                  onTap: () {},
                  child: Text(
                    "View all",
                    style: Styles.headLineStyle4,
                  ))
            ],
          )),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 370,
                padding: EdgeInsets.all(15),
                width: size.width * 0.44,
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("img/welcome-three.jpg")),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 3,
                                blurRadius: 3)
                          ]),
                    ),
                    Gap(20),
                    Text(
                      "25% discount on early booking  of every flights. Grab the opportunity",
                      style: Styles.headLineStyle2
                          .copyWith(fontSize: 22, color: Colors.black26),
                    )
                  ],
                ),
              ),
              Container(

                height: 400,
                width: size.width * 0.44,
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /*
                    * Discount message
                    * */
                    Stack(
                      children :[
                        Container(
                          padding: EdgeInsets.all(15),
                        height: 175,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueAccent),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headLineStyle
                                  .copyWith(color: Colors.white),
                            ),
                            Gap(20),
                            Text(
                              "Take the survey about the service and get discount",
                              style:
                                  Styles.textStyle.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                        Positioned(
                          right: -50,
                          top: -45,
                          child: Container(
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.lightBlue,width: 20)
                            ),
                          ),
                        )
                      ]
                    ),
                    Container(
                      height: 175,
                      padding: EdgeInsets.all(12),
                      width: size.width *0.44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.orange.shade400
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Take care",
                            style: Styles.headLineStyle
                                .copyWith(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.thumb_up,size: 50,color: Colors.white,),
                              Icon(Icons.thumb_up,size: 50,color: Colors.white,),
                              Icon(Icons.thumb_up,size: 50,color: Colors.white,),
                            ]
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
