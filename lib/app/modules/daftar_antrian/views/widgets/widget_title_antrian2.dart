import 'package:flutter/material.dart';

class WidgetTitleAntrian2 extends StatefulWidget {
  const WidgetTitleAntrian2({Key? key}) : super(key: key);

  @override
  _WidgetTitleAntrian2State createState() => _WidgetTitleAntrian2State();
}

class _WidgetTitleAntrian2State extends State<WidgetTitleAntrian2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
      child: Row(
        children: [
          Expanded(
            child: Text(
                "Silahkan datang ke FO dan membawa KTP anda \nuntuk melakukan registrasi ulang"),
          ),
          Image.asset(
            'assets/images/daftar_antrian.jpg',
            width: 120.0,
            height: 90.0,
            fit: BoxFit.cover,
          ),
          // Text(
          //   "Details",
          //   textAlign: TextAlign.center,
          //   style: GoogleFonts.nunito(
          //     color: MyColors.blackText,
          //     fontSize: MyFontSize.medium1,
          //   ),
          // ),
          SizedBox(
            width: 10,
          ),
          // Icon(Icons.arrow_forward_ios_outlined, size: 15,)
        ],
      ),
    );
  }
}
