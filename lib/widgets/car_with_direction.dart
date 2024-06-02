import 'package:car_assistant_dashboard/constants/app_colors.dart';
import 'package:car_assistant_dashboard/constants/configs.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CarWithDirection extends StatefulWidget {
  const CarWithDirection({super.key});

  @override
  State<CarWithDirection> createState() => _CarWithDirectionState();
}

class _CarWithDirectionState extends State<CarWithDirection> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Outer border
              // Container(
              //   width: 200,
              //   height: 200,
              //   decoration: BoxDecoration(
              //     shape: BoxShape.circle,
              //     border: Border.all(color: Colors.black, width: 8),
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.grey.withOpacity(0.5),
              //         spreadRadius: 5,
              //         blurRadius: 7,
              //         offset: Offset(0, 3),
              //       ),
              //     ],
              //   ),
              // ),
              // Inner border
              // Container(
              //   width: 180,
              //   height: 180,
              //   decoration: BoxDecoration(
              //     shape: BoxShape.circle,
              //     border: Border.all(color: Colors.black, width: 4),
              //   ),
              // ),
              // Parrot colored circle
              // Container(
              //   width: 160,
              //   height: 160,
              //   decoration: BoxDecoration(
              //     shape: BoxShape.circle,
              //     color: Colors.green.shade500, // Parrot color
              //   ),
              // ),
              // Image.asset(IMAGE_ASSET_DIR+"curve.png",
              //   height: 80.sp,
              //   width: 50.sp,
              // ),
              Image.asset(IMAGE_ASSET_DIR+"car.png",
              height: 80.sp,
              )
            ],
          ),
        ),
        Container(
          height: 17.h,
          decoration: BoxDecoration(
              // color: AppColors.pink
              ),
          child: Padding(
            padding: EdgeInsets.only(top: 5.sp, right: 10.sp, left: 10.sp),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  directionWidget("L"),
                  directionWidget("R"),
                ]),
          ),
        ),
        Positioned(
            bottom: 20,
            left: 70,
            right: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            roundPart(icon:Icons.lock),
            roundPart(icon: Icons.lock_open_rounded,
            iconColor: AppColors.black,
            color: AppColors.parrot
            ),
          ],
        ))

      ],
    );
  }

  Widget directionWidget(String title) {
    return Container(
      height: 40.sp,
      width: 40.sp,
      decoration: BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.circular(50.sp),
          border: Border.all(
              color: AppColors.white.withOpacity(0.5), width: 0.3.sp)),
      child: Padding(
        padding: EdgeInsets.all(2.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.arrow_upward_rounded,
              color: AppColors.parrot,
              size: 8.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: AppColors.parrot,
                  size: 8.sp,
                ),
                Material(
                  color: Colors.transparent,
                  shadowColor: AppColors.parrot.withOpacity(0.4),
                  elevation: 10,
                  child: Container(
                    height: 10.sp,
                    width: 10.sp,
                    child: Center(
                      child: Text(title,
                          style: TextStyle(
                              color: AppColors.parrot, fontSize: 7.sp)),
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_rounded,
                  color: AppColors.parrot,
                  size: 8.sp,
                ),
              ],
            ),
            Icon(
              Icons.arrow_downward_rounded,
              color: AppColors.parrot,
              size: 8.sp,
            ),
          ],
        ),
      ),
    );
  }
  Widget roundPart({
    Color color=AppColors.lightGrey,
    Color iconColor=AppColors.white,
    required IconData icon}){
    return Container(
      height: 21.sp,
      width: 21.sp,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50.sp)
      ),
      child: Center(child: Icon(icon, size: 12.sp,
      color: iconColor,
      )),
   
    );
  }
}
