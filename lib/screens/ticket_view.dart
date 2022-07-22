
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_style.dart';
import 'package:ticket_booking_app/widgets/custom_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 150,
      child: Container(
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius:  BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          color: Styles.orangeColor
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      CustomContainer(),
                      Expanded(child: SizedBox(
                        height: 25,
                        child: Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(5, (index) => Text("-")),
                        ),
                      )),
                      CustomContainer(),
                      Expanded(child: Container()),
                      Text("London",style: Styles.headLineStyle3.copyWith(color: Colors.white))
                    ],
                  
              )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
