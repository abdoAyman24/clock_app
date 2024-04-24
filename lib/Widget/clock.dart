import 'dart:math';
import 'package:clock_app/controller/Home_controller.dart';
import 'package:clock_app/painter/clockPainter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Clock extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 84),
        child: Obx(
          () => AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                  color: Get.isDarkMode ? Color.fromARGB(255, 23, 21, 21) : Color(0xffFFFFFF),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 0),
                        blurRadius: 64,
                        color: Color(0xFF364564).withOpacity(0.14))
                  ]),
              child: Transform.rotate(
                  angle: -pi / 2,
                  child: CustomPaint(
                      painter: ClockPainter(controller.dateTime.value))),
            ),
          ),
        ));
  }
}
