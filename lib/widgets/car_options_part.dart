


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/app_colors.dart';

class CarOptionsPart extends StatefulWidget {
  const CarOptionsPart({super.key});

  @override
  State<CarOptionsPart> createState() => _CarOptionsPartState();
}

class _CarOptionsPartState extends State<CarOptionsPart> {
  @override
  Widget build(BuildContext context) {
    return Container(height: 7.h,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        roundPart(icon: Icons.brightness_5_sharp, title: 'Brightness'),
        roundPart(icon: Icons.fingerprint, title: 'Fingerprint'),
        roundPart(icon: Icons.query_stats, title: 'Statistics'),
      ],
    ),
    );
  }
  Widget roundPart({
    Color color=AppColors.lightGrey,
    Color iconColor=AppColors.white,
    required IconData icon,
  required String title
  }){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.sp),
      child: Column(
        children: [
          Container(
            height: 21.sp,
            width: 21.sp,
            margin: EdgeInsets.symmetric(horizontal: 5.sp),
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(50.sp)
            ),
            child: Center(child: Icon(icon, size: 12.sp,
              color: iconColor,
            )),

          ),
          SizedBox(height: 3.sp,),
          Text(title,
          style: TextStyle(
          color: AppColors.white, fontSize: 5.sp)
      )
        ],
      ),
    );
} }
