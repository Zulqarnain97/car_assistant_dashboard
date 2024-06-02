import 'package:car_assistant_dashboard/constants/configs.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';

import '../constants/app_colors.dart';

class TemperatureBox extends StatefulWidget {
  const TemperatureBox({super.key});

  @override
  State<TemperatureBox> createState() => _TemperatureBoxState();
}

class _TemperatureBoxState extends State<TemperatureBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.sp, bottom: 3.sp, right: 10.sp),
      decoration: BoxDecoration(
          color: AppColors.grey, borderRadius: BorderRadius.circular(10.sp)),
      child: Padding(
        padding: EdgeInsets.only(left: 5.sp, right: 5.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Climate',
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 5.sp,
                    fontWeight: FontWeight.bold)),
            Text('Interior: 24° C',
                style: TextStyle(
                    color: AppColors.white.withOpacity(0.6), fontSize: 4.5.sp)),
            Row(
              children: [
                Text('23° C',
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.bold)),
                Spacer(),
                Image.asset(
                  IMAGE_ASSET_DIR + "thermometer.png",
                  height: 16.sp,
                ),
              ],
            ),
            Text('Window Closed',
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 5.sp,
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('10° C',
                      style: TextStyle(
                          color: AppColors.white.withOpacity(0.6),
                          fontSize: 6.sp)),
                  Text('40° C',
                      style: TextStyle(
                          color: AppColors.white.withOpacity(0.6),
                          fontSize: 6.sp)),
                ],
              ),
            ),
            SizedBox(
              height: 2.sp,
            ),
            new LinearPercentIndicator(
              width: 32.w,
              lineHeight: 1.5.sp,
              percent: 0.4,
              backgroundColor: AppColors.white.withOpacity(0.6),
              progressColor: AppColors.parrot,
              barRadius: Radius.circular(20.sp),
            ),
          ],
        ),
      ),
    );
  }
}
