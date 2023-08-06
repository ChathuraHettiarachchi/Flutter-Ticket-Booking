import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking/screens/hotel_item.dart';
import 'package:flutter_ticket_booking/screens/ticket_item.dart';
import 'package:flutter_ticket_booking/utils/app_styles.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning',
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          'Book Tickets',
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/ic_logo.png'),
                        ),
                      ),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        'Search',
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Fights',
                      style: Styles.headLineStyle2,
                    ),
                    InkWell(
                      onTap: () {
                        print('Tapped!');
                      },
                      child: Text(
                        'View all',
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const Gap(15),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                TicketItem(rightMargin: 16),
                TicketItem(rightMargin: 16),
                TicketItem(rightMargin: 16),
                TicketItem(rightMargin: 16),
              ],
            ),
          ),
          const Gap(10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hotels',
                  style: Styles.headLineStyle2,
                ),
                InkWell(
                  onTap: () {
                    print('Tapped!');
                  },
                  child: Text(
                    'View all',
                    style:
                        Styles.textStyle.copyWith(color: Styles.primaryColor),
                  ),
                )
              ],
            ),
          ),
          const Gap(15),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                HotelItem(image: 'assets/images/img1.jpeg'),
                HotelItem(image: 'assets/images/img2.jpeg'),
                HotelItem(image: 'assets/images/img3.jpeg'),
                HotelItem(image: 'assets/images/img4.jpeg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
