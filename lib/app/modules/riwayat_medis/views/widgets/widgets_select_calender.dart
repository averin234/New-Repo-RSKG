import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:rskgcare/app/modules/riwayat_medis/controllers/riwayat_medis_controller.dart';

class HorizontalWeekCalendarPackage extends GetView<RiwayatMedisController> {
  const HorizontalWeekCalendarPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              'Tanggal Riwayat',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.black, fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          CalendarTimeline(
            initialDate: DateTime.parse(controller.date.value),
            firstDate: DateTime(1998, 1, 15),
            lastDate: DateTime(2100, 15, 15),
            onDateSelected: (date) {
              controller.date.value = DateFormat('yyyy-MM-dd').format(date);
            },
            leftMargin: 60,
            monthColor: Colors.black,
            dayColor: Colors.grey,
            activeDayColor: Colors.white,
            activeBackgroundDayColor: Colors.blue,
            dotsColor: Colors.white,
          )
        ],
      ),
    );
  }
}
