import 'package:flutter/material.dart';

class WidgetTitlePoli2 extends StatefulWidget {
  const WidgetTitlePoli2({Key? key}) : super(key: key);

  @override
  _WidgetTitlePoli2State createState() => _WidgetTitlePoli2State();
}

class _WidgetTitlePoli2State extends State<WidgetTitlePoli2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      color: Color(0xff4babe7),
      ),
      child : Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: Row(
        children: [
          Expanded(
            child: Text(
                "Buat Janji dengan dokter sesuai kebutuhanmu.",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/images/registrasi_polik.png',
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
          // Icon(Icons.arrow_forward_ios_outlined, size: 15,)
        ],
      ),
      ),
    );
  }
}
