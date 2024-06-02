import 'package:car_assistant_dashboard/constants/app_colors.dart';
import 'package:car_assistant_dashboard/constants/configs.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class EmergencyBox extends StatefulWidget {
  const EmergencyBox({super.key});

  @override
  State<EmergencyBox> createState() => _EmergencyBoxState();
}

class _EmergencyBoxState extends State<EmergencyBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.sp, right: 10.sp),
      height: 6.h,
    decoration: BoxDecoration(
      color: AppColors.grey,
      borderRadius: BorderRadius.circular(10.sp)
    ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 8.sp, ),
        child: Row(
          children: [
           Container(
              height: 20.sp,
             width: 20.sp,
             decoration: BoxDecoration(
                 color: AppColors.lightGrey,
                 borderRadius: BorderRadius.circular(5.sp)
             ),
             child: Padding(
               padding:  EdgeInsets.all(1.sp),
               child: Image.asset(IMAGE_ASSET_DIR + "warning.png",
               height: 18.sp,
               width: 18.sp,
               ),
             ),
           ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 5.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Emergency',
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 5.sp,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 2.sp,),
                  Text('Switch On only in emergency case',
                      style: TextStyle(
                          color: AppColors.white.withOpacity(0.6), fontSize: 4.5.sp)),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 9.sp,
              width: 18.sp,
              decoration: BoxDecoration(
                color: AppColors.lightGrey,
                borderRadius: BorderRadius.circular(10.sp)
              ),
              child: Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(1.sp),
                    child: Container(
                      height: 7.sp,
                      width: 7.sp,
                      decoration: BoxDecoration(
                          color: AppColors.parrot,
                          borderRadius: BorderRadius.circular(10.sp)
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
