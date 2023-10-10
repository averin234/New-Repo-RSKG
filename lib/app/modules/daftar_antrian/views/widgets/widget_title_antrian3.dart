import 'package:flutter/material.dart';

class WidgetTitleAntrian3 extends StatefulWidget {
  const WidgetTitleAntrian3({Key? key}) : super(key: key);

  @override
  _WidgetTitleAntrian3State createState() => _WidgetTitleAntrian3State();
}

class _WidgetTitleAntrian3State extends State<WidgetTitleAntrian3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
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
