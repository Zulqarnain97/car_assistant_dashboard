import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/app_colors.dart';

class CalendarBox extends StatefulWidget {
  const CalendarBox({super.key});

  @override
  State<CalendarBox> createState() => _CalendarBoxState();
}

class _CalendarBoxState extends State<CalendarBox> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 5.sp, bottom: 3.sp, right: 10.sp),
          width: double.infinity,
          decoration: BoxDecoration(
              color: AppColors.grey, borderRadius: BorderRadius.circular(10.sp)),
          child: Padding(
            padding: EdgeInsets.only(left: 5.sp, right: 5.sp, top: 5.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('My Calendar',
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 8.sp,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 3.sp,
                ),
                Text('5 Aug - 2022',
                    style: TextStyle(
                        color: AppColors.white.withOpacity(0.6), fontSize: 4.5.sp)),
                SizedBox(
                  height: 3.sp,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('5:00',
                        style: TextStyle(
                            color: AppColors.white.withOpacity(0.6),
                            fontSize: 4.5.sp)),
                    // SizedBox(
                    //   height: 3.sp,
                    // ),
                    Divider(color: AppColors.lightGrey,),
                    Text('6:00',
                        style: TextStyle(
                            color: AppColors.white.withOpacity(0.6),
                            fontSize: 4.5.sp)),
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          right: 40,
          top: 90,
          left: 60,
          bottom: 40,
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.lightGrey,
                borderRadius: BorderRadius.circular(5.sp)),
            child: Row(
              children: [
                Container(
                  width: 4.sp,
                  decoration: BoxDecoration(
                    color: AppColors.parrot,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5.sp),
                      bottomLeft: Radius.circular(5.sp),
                    )
                  ),
                ),
                SizedBox(width: 10.sp,),
                Padding(
                  padding:  EdgeInsets.only(top: 1.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Meeting with clients',
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 4.sp,
                              fontWeight: FontWeight.normal)),
                      SizedBox(
                        height: 2.sp,
                      ),
                     Row(children: [
                       Text('5:00 -',
                           style: TextStyle(
                               color: AppColors.white.withOpacity(0.6),
                               fontSize: 4.5.sp)),
                       // SizedBox(width: 10.sp,),
                       Text(' 6:20',
                           style: TextStyle(
                               color: AppColors.white.withOpacity(0.6),
                               fontSize: 4.5.sp)),
                     ],)
                    ],
                  ),
                ),


              ],

            ),
          ),
        )
      ],
    );
  }
}
