import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:rskgcare/app/modules/daftar_antrian/controllers/daftar_antrian_controller.dart';

class HorizontalWeekCalendarPackage1 extends GetView<DaftarAntrianController> {
  const HorizontalWeekCalendarPackage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: Text(
            'Tanggal Antrian',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.black54,
                  fontSize: 15,
                ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        CalendarTimeline(
          initialDate: DateTime.parse(controller.date.value),
          firstDate: DateTime.now(),
          lastDate: DateTime(2100, 15, 15),
          onDateSelected: (date) {
            controller.date.value = DateFormat('yyyy-MM-dd').format(date);
          },
          leftMargin: 60,
          monthColor: Colors.blueGrey,
          dayColor: Colors.blueGrey,
          activeDayColor: Colors.white,
          activeBackgroundDayColor: Color(0xff4babe7),
          dotsColor: Colors.white,
        ),
      ],
    );
  }
}
