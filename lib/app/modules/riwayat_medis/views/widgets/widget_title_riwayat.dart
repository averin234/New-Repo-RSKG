import 'package:flutter/material.dart';
import 'package:rskgcare/app/data/componen/my_style.dart';

class WidgetTitleRiwayat extends StatefulWidget {
  const WidgetTitleRiwayat({Key? key}) : super(key: key);

  @override
  _WidgetTitleRiwayatState createState() => _WidgetTitleRiwayatState();
}

class _WidgetTitleRiwayatState extends State<WidgetTitleRiwayat> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
      child: Row(
        children: [
          Expanded(
            child: Text("Riwayat Poliklinik", style: MyStyle.textTitleBlack),
          ),
          SizedBox(
            width: 10,
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
