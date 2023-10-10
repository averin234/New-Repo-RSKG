import 'package:flutter/material.dart';

class WidgetTitlePoli3 extends StatefulWidget {
  const WidgetTitlePoli3({Key? key}) : super(key: key);

  @override
  _WidgetTitlePoli3State createState() => _WidgetTitlePoli3State();
}

class _WidgetTitlePoli3State extends State<WidgetTitlePoli3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 1.5,
              width: 320.0,
              color: const Color(0xb3d9d8d8),
              margin: const EdgeInsets.only(bottom: 0),
            ),
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
    );
  }
}
