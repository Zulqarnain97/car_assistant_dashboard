import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/configs.dart';

class MusicBox extends StatefulWidget {
  const MusicBox({super.key});

  @override
  State<MusicBox> createState() => _MusicBoxState();
}

class _MusicBoxState extends State<MusicBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 11.h,
      margin: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
      decoration: BoxDecoration(
          color: AppColors.grey, borderRadius: BorderRadius.circular(10.sp)),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 8.sp),
                height: 40.sp,
                width: 40.sp,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(6.sp)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6.sp),
                  child: Image.asset(
                    IMAGE_ASSET_DIR + "music.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4.sp, vertical: 8.sp),
                height: 40.sp,
                width: 80.sp,
                decoration: BoxDecoration(

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Love me like you do',
                        style: TextStyle(
                            color: AppColors.white, fontSize: 8.sp)),
                    Text('Ellie Goulding',
                        style: TextStyle(
                            color: AppColors.white.withOpacity(0.6), fontSize: 6.sp)),
                  ],
                ),
              ),
              Expanded(child: Container(
                // color: Colors.green,
              child: Padding(
                padding:  EdgeInsets.only(top: 5.sp, right: 5.sp, left: 5.sp,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 7.sp,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Image.asset(
                        IMAGE_ASSET_DIR + "previous.png",
                        fit: BoxFit.cover,
                        width: 5.sp,
                        height: 5.sp,
                        color: AppColors.white.withOpacity(0.6),
                      ),
                      SizedBox(width: 5.sp,),
                      Image.asset(
                        IMAGE_ASSET_DIR + "previous.png",
                        fit: BoxFit.cover,
                        width: 5.sp,
                        height: 5.sp,
                        color: AppColors.white.withOpacity(0.6),
                      ),
                        SizedBox(width: 5.sp,),
                        new CircularPercentIndicator(
                          radius: 25.0,
                          lineWidth: 4.0,
                          percent: 0.30,
                          center: new Icon(Icons.pause,
                            size: 5.sp,
                            color: AppColors.white.withOpacity(0.6),
                          ),
                          progressColor: AppColors.parrot,
                        ),
                        SizedBox(width: 5.sp,),
                      Image.asset(
                        IMAGE_ASSET_DIR + "play.png",
                        fit: BoxFit.cover,
                        width: 5.sp,
                        height: 5.sp,
                        color: AppColors.white.withOpacity(0.6),
                      ),
                      SizedBox(width: 5.sp,),
                      Image.asset(
                        IMAGE_ASSET_DIR + "play.png",
                        fit: BoxFit.cover,
                        width: 5.sp,
                        height: 5.sp,
                        color: AppColors.white.withOpacity(0.6),
                      ),
                    ],),
                    SizedBox(height: 4.sp,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 4.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text('0:00',
                            style: TextStyle(
                                color: AppColors.white.withOpacity(0.6), fontSize: 6.sp)),
                        Text('2:20',
                            style: TextStyle(
                                color: AppColors.white.withOpacity(0.6), fontSize: 6.sp)),

                      ],),
                    ),
                    SizedBox(height: 4.sp,),
                    new LinearPercentIndicator(
                      width: 20.w,
                      lineHeight: 1.7.sp,
                      percent: 0.5,
                      backgroundColor: AppColors.white.withOpacity(0.6),
                      progressColor: AppColors.parrot,
                      barRadius: Radius.circular(20.sp),
                    ),
                  ],
                ),
              ),
              ))
            ],
          ),
          Positioned(
            top: 12,
            right: 12,
            child:   Icon(Icons.share, size: 8.sp, color: AppColors.white.withOpacity(0.6),),
          )
        ],
      ),
    );
  }
}
