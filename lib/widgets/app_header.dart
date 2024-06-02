import '../constants/app_colors.dart';
import 'package:sizer/sizer.dart';

import '../constants/configs.dart';
import 'package:flutter/material.dart';

class AppHeader extends StatefulWidget {
  const AppHeader({super.key});

  @override
  State<AppHeader> createState() => _AppHeaderState();
}

class _AppHeaderState extends State<AppHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      height: 10.h,
      child: Padding(
        padding: EdgeInsets.only(left: 18.sp, top: 10.sp, right: 18.sp),
        child: Row(
          children: [
            Flexible(
                flex: 3,
                child: Row(
                  children: [
                    Image.asset(
                      IMAGE_ASSET_DIR + "logo.png",
                      height: 28.sp,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      'Dashboard',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 7.sp),
                        height: 5.5.h,
                        decoration: BoxDecoration(
                            color: AppColors.grey,
                            borderRadius: BorderRadius.circular(50.sp)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.sp),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                size: 15.sp,
                                color: AppColors.white.withOpacity(0.6),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(
                                'Search',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.6),
                                  fontSize: 8.sp,
                                  // fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            Flexible(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(child: SizedBox()),
                    Container(
                      margin: EdgeInsets.only(bottom: 10.sp),
                      height: 20.sp,
                      width: 20.sp,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.sp)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.sp),
                        child: Image.asset(
                          IMAGE_ASSET_DIR + "clouds.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('25° C',
                            style:
                                TextStyle(color: Colors.white, fontSize: 11.sp,
                                fontWeight: FontWeight.bold
                                )),

                        Text('Rainy',
                            style:
                                TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 7.sp)),
                      ],
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Stack(
                      children: [
                        Icon(
                          Icons.notifications,
                          size:18.sp,
                          color: Colors.white,
                        ),
                        Positioned(
                          right: 4,
                          top: 4,
                          child: Container(
                            height: 4.sp,
                            width: 4.sp,
                            decoration: BoxDecoration(
                                color: AppColors.pink,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                      height: 26.sp,
                      width: 26.sp,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.sp)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.sp),
                        child: Image.asset(
                          IMAGE_ASSET_DIR + "profile.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
