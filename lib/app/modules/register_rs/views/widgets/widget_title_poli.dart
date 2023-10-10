import 'package:flutter/material.dart';
import 'package:rskgcare/app/data/componen/my_style.dart';

class WidgetTitlePoli extends StatefulWidget {
  const WidgetTitlePoli({Key? key}) : super(key: key);

  @override
  _WidgetTitlePoliState createState() => _WidgetTitlePoliState();
}

class _WidgetTitlePoliState extends State<WidgetTitlePoli> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
      child: Row(
        children: [
          Expanded(
            child:
                Text("List Antrean Poliklink", style: MyStyle.textTitleBlack),
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
