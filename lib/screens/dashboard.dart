import '../widgets/bottom_options.dart';
import '../widgets/calendar_box.dart';
import '../widgets/car_options_part.dart';
import '../widgets/car_with_direction.dart';
import '../widgets/emergency_box.dart';
import '../widgets/map_box.dart';
import '../widgets/meters_part.dart';
import '../widgets/temperature_box.dart';
import 'package:sizer/sizer.dart';

import '../widgets/menu.dart';

import '../constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../widgets/app_header.dart';
import '../widgets/music_box.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          AppHeader(),
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Flexible(
                      flex: 3,
                      child: Container(
                        child: Row(
                          children: [
                            Menu(),
                            Expanded(
                              child: Container(
                                child: Column(
                                  children: [
                                    Flexible(
                                        flex: 5,
                                        child: Container(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  child: MapBox()),
                                              Expanded(
                                                child: Column(
                                                  children: [
                                                    Expanded(
                                                        child: TemperatureBox()),
                                                    Expanded(
                                                      child: CalendarBox(),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )),
                                    Flexible(
                                      flex: 3,
                                      child: MusicBox(),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: BottomOptions(),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                  Flexible(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        EmergencyBox(),
                          CarWithDirection(),
                          CarOptionsPart(),
                          MetersPart(),
                      ],)),
                ],
              ),
              // height: MediaQuery.of(context).size.height/6,
            ),
          )
        ],
      ),
    );
  }
}
