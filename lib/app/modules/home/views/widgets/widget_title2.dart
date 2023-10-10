import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rskgcare/app/data/componen/my_font_size.dart';
import 'package:rskgcare/app/data/componen/my_style.dart';

import '../../../../routes/app_pages.dart';

class WidgetTitle2 extends StatefulWidget {
  const WidgetTitle2({Key? key}) : super(key: key);

  @override
  _WidgetTitle2State createState() => _WidgetTitle2State();
}

class _WidgetTitle2State extends State<WidgetTitle2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 30, 10, 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Expanded(
              child: Text(
                "Jadwal Dokter",
                style: GoogleFonts.nunito(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.REGISTER_RS);
              },
              child: Text(
                "Lihat Semua",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  color: Colors.blue,
                  fontSize: MyFontSize.medium1,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        Text("Buat Janji dengan dokter sesuai kebutuhanmu.",
            style: TextStyle(fontSize: 13)),
      ]),
    );
  }
}
