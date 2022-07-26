import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_style.dart';
import 'package:ticket_booking_app/widgets/custom_container.dart';

class TicketView extends StatelessWidget {
  final bool? isColor;

  const TicketView({Key? key, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.8,
      child: Container(
        margin: isColor ==null ? EdgeInsets.only(right: 20) : EdgeInsets.zero,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        child: Column(
          children: [
            //* Will show the blue part of ticket  and  information*/
            Container(
              decoration: BoxDecoration(
                  color: isColor == null ? Styles.orangeColor : Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  //ticket first row with airplane
                  Row(
                    children: [
                      Text("NYC",
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3
                                  .copyWith(color: Colors.black)),
                      Expanded(child: Container()),
                      CustomContainer(isColor: isColor),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: 25,
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 7)
                                          .floor(),
                                      (index) => SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: isColor == null
                                                      ? Colors.white
                                                      : Styles.orangeColor),
                                            ),
                                          )),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: isColor == null
                                    ? Colors.white
                                    : Styles.orangeColor,
                              ),
                            ),
                          ),
                        ],
                      )),
                      CustomContainer(isColor: isColor),
                      Expanded(child: Container()),
                      Text("LDN",
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3
                                  .copyWith(color: Colors.black))
                    ],
                  ),
                  Gap(2),
                  //second row with flight info
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "New-York",
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                      ),
                      Text(
                        "8H 30M",
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                      ),
                      Text(
                        "London",
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                      )
                    ],
                  )
                ],
              ),
            ),
            /*Will show the red part of ticket and information*/
            Container(
              color: isColor == null ? Colors.deepOrangeAccent : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Styles.backgroundColor,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                              (constraints.constrainWidth() / 20).floor(),
                              (index) => const SizedBox(
                                    height: 1,
                                    width: 5,
                                    child: DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                    ),
                                  )),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Styles.backgroundColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            /*
            * bottom part of orange ticket*/
            Container(
              decoration: BoxDecoration(
                  color:
                      isColor == null ? Colors.deepOrangeAccent : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft:
                          isColor == null ? Radius.circular(20) : Radius.zero,
                      bottomRight:
                          isColor == null ? Radius.circular(20) : Radius.zero)),
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1 May",
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                      ),
                      const Gap(2),
                      Text(
                        "Date",
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "8:00 AM",
                        style: isColor == null
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4
                                .copyWith(color: Colors.black),
                      ),
                      const Gap(2),
                      Text(
                        "Departure Time",
                        style: isColor == null
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4
                                .copyWith(color: Colors.black),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "23",
                        style: isColor == null
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4
                                .copyWith(color: Colors.black),
                      ),
                      const Gap(2),
                      Text(
                        "Number",
                        style: isColor == null
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4
                                .copyWith(color: Colors.black),
                      )
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
