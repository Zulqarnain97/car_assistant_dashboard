import 'package:car_assistant_dashboard/constants/app_colors.dart';
import 'package:car_assistant_dashboard/constants/configs.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class MetersPart extends StatefulWidget {
  const MetersPart({super.key});

  @override
  State<MetersPart> createState() => _MetersPartState();
}

class _MetersPartState extends State<MetersPart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 17.h,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: SizedBox()),
              Center(
                child: Container(
                    height: 13.h,
                    width: 30.w,
                    child: SfRadialGauge(axes: <RadialAxis>[
                      RadialAxis(minimum: 0, maximum: 150, ranges: <GaugeRange>[
                        GaugeRange(
                            startValue: 0,
                            endValue: 50,
                            color: AppColors.parrot),
                        GaugeRange(
                            startValue: 50,
                            endValue: 100,
                            color: AppColors.lightGrey),
                        GaugeRange(
                            startValue: 100,
                            endValue: 150,
                            color: AppColors.lightGrey)
                      ], pointers: <GaugePointer>[
                        NeedlePointer(
                          value: 90,
                          needleColor: AppColors.parrot,
                        )
                      ], annotations: <GaugeAnnotation>[
                        GaugeAnnotation(
                            widget: Container(
                                child: Text(
                              '90 km/h',
                              style: TextStyle(
                                  color: AppColors.white.withOpacity(0.6),
                                  fontSize: 6.sp),
                            )),
                            angle: 90,
                            positionFactor: 0.5)
                      ])
                    ])),
              ),
            ],
          ),
          Positioned(
            left: -90,
            top: 8,
            child: smallMeter("petrol.png", "Petrol")
          ),
          Positioned(
            right: -90,
            top: 8,
            child: smallMeter("battery.png", "Battery")
          ),
        ],
      ),
    );
  }
  Widget smallMeter(String path, String title){
    return Container(
      height: 9.h,
      width: 50.w,
      child: SfRadialGauge(
          title: GaugeTitle(
              text: '',
              textStyle: const TextStyle(
                  fontSize: 20.0, fontWeight: FontWeight.bold)),
          axes: <RadialAxis>[
            RadialAxis(minimum: 0, maximum: 150, ranges: <GaugeRange>[
              GaugeRange(
                  startValue: 0,
                  endValue: 50,
                  color: AppColors.parrot.withOpacity(0.5),
                  startWidth: 10,
                  endWidth: 10),
              GaugeRange(
                  startValue: 50,
                  endValue: 100,
                  color: AppColors.parrot.withOpacity(0.8),
                  startWidth: 10,
                  endWidth: 10),
              GaugeRange(
                  startValue: 100,
                  endValue: 150,
                  color: AppColors.parrot,
                  startWidth: 10,
                  endWidth: 10)
            ], pointers: <GaugePointer>[
              NeedlePointer(
                value: 90,
                needleColor: AppColors.white,
              )
            ], annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                  widget: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          IMAGE_ASSET_DIR + path,
                          height: 13.sp,
                          color: AppColors.white,
                        ),
                        SizedBox(
                          height: 3.sp,
                        ),
                        Text(title,
                            style: TextStyle(
                                color: AppColors.white.withOpacity(0.6),
                                fontSize: 6.sp)),
                      ],
                    ),
                  ),
                  angle: 90,
                  positionFactor: 0.5)
            ])
          ]),
    );
  }
}
