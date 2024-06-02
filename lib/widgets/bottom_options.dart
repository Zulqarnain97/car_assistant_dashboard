import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/app_colors.dart';


class BottomOptions extends StatefulWidget {
  const BottomOptions({super.key});

  @override
  State<BottomOptions> createState() => _BottomOptionsState();
}

class _BottomOptionsState extends State<BottomOptions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
    child: Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.sp),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SingleOption(Icons.cloudy_snowing, "Humidity"),
          SingleOption(Icons.wind_power, "Wind"),
          SingleOption(Icons.bluetooth, "Bluetooth"),
          SingleOption(Icons.message,"Message"),
          SingleOption(Icons.airline_seat_recline_extra_sharp,"20"),


        ],
      ),
    ),
    );
  }
  Widget SingleOption(IconData icon, String title){
    return Container(
      // margin: EdgeInsets.only( bottom: 3.sp, right: 10.sp),
height: 40.sp,
      width: 40.sp,
      decoration: BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.circular(5.sp)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 10.sp, color: AppColors.white,),
          SizedBox(height: 2.sp,),
          Text(title,
              style: TextStyle(
                  color: AppColors.white, fontSize: 6.sp)),

        ],
      ),
    );
  }
}
