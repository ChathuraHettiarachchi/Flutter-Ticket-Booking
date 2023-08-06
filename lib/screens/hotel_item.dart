import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking/utils/app_layout.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class HotelItem extends StatelessWidget {
  const HotelItem({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(top: 7, right: 17),
      width: size.width * 0.6,
      height: 358,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 5),
      ], color: Styles.primaryColor, borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                )),
          ),
          const Gap(10),
          Text(
            'Open space',
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          const Gap(5),
          Text(
            'London',
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            '\$40/night',
            style: Styles.headLineStyle1.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
