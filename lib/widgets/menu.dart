import 'package:car_assistant_dashboard/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(left: 20.sp, top: 30.sp),
      child: Column(
        children: [
          menuOption(isSelected: true, icon: Icons.home_filled),
          menuOption(icon: Icons.camera_alt_rounded),
          menuOption(icon: Icons.phone),
          menuOption(icon: Icons.play_circle),
          menuOption(icon: Icons.settings),
        ],
      ),
    );
  }

  Widget menuOption({bool isSelected=false, required IconData icon}) {
    return Container(
      height: 30.sp,
      width: 30.sp,
      margin: EdgeInsets.only(bottom: 10.sp),
      decoration: BoxDecoration(
          color:  isSelected ? AppColors.white.withOpacity(0.4): AppColors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(50.sp)),
      child: Icon(
        icon,
        color: isSelected ? AppColors.white.withOpacity(0.6) : AppColors.white.withOpacity(0.4),
        size: 16.sp,
      ),
    );
  }
}
