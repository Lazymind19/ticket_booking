import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_style.dart';
class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotels;
  const HotelScreen({Key? key, required this.hotels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: 280,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(horizontal:15, vertical: 15),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 5,
            spreadRadius: 3
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("img/${hotels['image']}")
              )
            ),
          ),
          Gap(10),
          Text(hotels['place'],style: Styles.headLineStyle2.copyWith(color: Colors.white38),),
          Gap(5),
          Text(hotels['destination'],style: Styles.headLineStyle3.copyWith(color: Colors.white),),
          Gap(10),
          Text("\$${hotels['price']}/night".toString(),style: Styles.headLineStyle.copyWith(color: Colors.white38),)
        ],
      ),
    );
  }
}
