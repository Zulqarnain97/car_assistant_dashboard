import 'package:car_assistant_dashboard/constants/configs.dart';
import 'package:car_assistant_dashboard/widgets/temperature_box.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';

import '../constants/app_colors.dart';

class MapBox extends StatefulWidget {
  const MapBox({super.key});

  @override
  State<MapBox> createState() => _MapBoxState();
}

class _MapBoxState extends State<MapBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: 5.sp, bottom: 3.sp, left: 10.sp, right: 10.sp),
      decoration: BoxDecoration(
          color: AppColors.grey, borderRadius: BorderRadius.circular(10.sp)),
      child: Stack(
        children: [
          ClipRRect(
      borderRadius: BorderRadius.circular(10.sp),
              child: Image.asset(IMAGE_ASSET_DIR+'map.png')),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              temperatureBoxHeader(),
              temperatureBoxFooter(),
            ],
          ),
        ],
      ),
    );
  }

  Widget temperatureBoxHeader() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
      height: 5.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.circular(5.sp)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(IMAGE_ASSET_DIR + 'turn-right.png',
            height: 30.sp,
              width: 30.sp,
              color: AppColors.parrot,
            ),
          ),
          Expanded(child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text('600m',
                    style: TextStyle(
                        color: AppColors.white, fontSize: 7.sp,
                        fontWeight: FontWeight.bold
                    )),
                Text('In 500m take turning right',
                    style: TextStyle(
                        color: AppColors.white.withOpacity(0.6), fontSize: 3.5.sp)),


              ],
            ),
          )),
        ],
      ),
    );
  }

  Widget temperatureBoxFooter() {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
      height: 6.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.sp),
            bottomRight: Radius.circular(10.sp),
          )),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.sp),
        child: Row(
          children: [
            Expanded(child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text('Club Town Gardens',
                      style: TextStyle(
                          color: AppColors.white, fontSize: 6.sp,
                      fontWeight: FontWeight.bold
                      )),
                  Text('MM Feeder Road, Kalkota',
                      style: TextStyle(
                          color: AppColors.white.withOpacity(0.6), fontSize: 4.5.sp)),
                  Row(
                    children: [
                      Text('2 KM',
                          style: TextStyle(
                              color: AppColors.white.withOpacity(0.6), fontSize: 4.5.sp)),
                      new LinearPercentIndicator(
                        width: 15.w,
                        lineHeight: 1.5.sp,
                        percent: 0.5,
                        backgroundColor: AppColors.white.withOpacity(0.6),
                        progressColor: AppColors.parrot,
                        barRadius: Radius.circular(20.sp),
                      ),
                      Text('3 min',
                          style: TextStyle(
                              color: AppColors.white.withOpacity(0.6), fontSize: 4.5.sp)),
                    ],
                  ),

                ],
              ),
            )),
            Container(
              decoration:
                  BoxDecoration(color: AppColors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(50.sp)
                  ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(
                  Icons.search,
                  size: 10.sp,
                  color: AppColors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
