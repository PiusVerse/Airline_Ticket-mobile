import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:learnflutter/utils/app_layout.dart';
import 'package:learnflutter/utils/app_style.dart';
import 'package:learnflutter/widgets/app_icon_text.dart';
import 'package:learnflutter/widgets/double_text.dart';
import 'package:learnflutter/widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(30),
          Text(
            'What are\nyou looking for ?',
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          const Gap(20),
          const TicketTab(firstTab: 'Airline Tickets', secondTab: 'Hotels'),
          const Gap(25),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          const Gap(15),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          const Gap(20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
            decoration: BoxDecoration(
                color: const Color(0xD91130CE),
                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Text('Find tickets',
                  style: Styles.textStyle.copyWith(color: Colors.white)),
            ),
          ),
          const Gap(30),
          const AppBoubleText(
              bigText: 'Upcoming Flights', smallText: 'View all'),
          const Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                height: 420,
                width: size.width * 0.42,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/sit.jpg'))),
                    ),
                    const Gap(9),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss.",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: 204,
                        decoration: BoxDecoration(
                            color: const Color(0xFF3AB8B8),
                            borderRadius: BorderRadius.circular(12)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Discount\nfor survey',
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            const Gap(10),
                            Text(
                                'Take the survey about our services and get discount.',
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 18))
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -58,
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: const Color(0xFF189999))),
                        ),
                      )
                    ],
                  ),
                  const Gap(10),
                  Container(
                    width: size.width * 0.44,
                    height: 200,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: const Color(0xFFEC6545)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Take love',
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const Gap(5),
                        RichText(
                            text:
                                const TextSpan(children: [TextSpan(text: '')]))
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
