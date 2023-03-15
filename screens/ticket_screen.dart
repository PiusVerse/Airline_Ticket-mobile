import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnflutter/screens/ticket_view.dart';
import 'package:learnflutter/utils/app_info_list.dart';
import 'package:learnflutter/utils/app_layout.dart';
import 'package:learnflutter/utils/app_style.dart';
import 'package:learnflutter/widgets/column_layout.dart';
import 'package:learnflutter/widgets/layout_builder.dart';
import 'package:learnflutter/widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 20),
            children: [
              const Gap(30),
              Text(
                'Tickets',
                style: Styles.headLineStyle1.copyWith(fontSize: 35),
              ),
              const Gap(20),
              const TicketTab(firstTab: 'Upcoming', secondTab: 'Previous'),
              const Gap(15),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                  margin: const EdgeInsets.only(left: 10, right: 16),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          ColumnLayout(
                            alignment: CrossAxisAlignment.start,
                            firstText: 'Flutter DB',
                            secondText: 'Passenger',
                          ),
                          ColumnLayout(
                            alignment: CrossAxisAlignment.end,
                            firstText: '5255 589658',
                            secondText: 'Passport',
                          )
                        ],
                      ),
                      const Gap(20),
                      const LayoutBuild(
                        sections: 15,
                        isColor: false,
                      ),
                      const Gap(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          ColumnLayout(
                            alignment: CrossAxisAlignment.start,
                            firstText: '1525 2252 2556',
                            secondText: 'Number of E-ticket',
                          ),
                          ColumnLayout(
                            alignment: CrossAxisAlignment.end,
                            firstText: 'B2SG28',
                            secondText: 'Booking code',
                          )
                        ],
                      ),
                      const Gap(20),
                      const LayoutBuild(
                        sections: 15,
                        isColor: false,
                      ),
                      const Gap(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/visa.png',
                                    scale: 11,
                                  ),
                                  Text(
                                    ' *** 2462',
                                    style: Styles.headLineStyle3,
                                  )
                                ],
                              ),
                              const Gap(5),
                              Text(
                                'Payment methods',
                                style: Styles.headLineStyle4,
                              )
                            ],
                          ),
                          const ColumnLayout(
                            alignment: CrossAxisAlignment.end,
                            firstText: '\$249.99',
                            secondText: 'price',
                          )
                        ],
                      ),
                    ],
                  )),
              const Gap(20),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            left: 15,
            top: 295,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: 15,
            top: 295,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
