import 'package:flutter/material.dart';
import 'package:rskgcare/app/data/componen/my_style.dart';

class WidgetTitleAntrian extends StatefulWidget {
  const WidgetTitleAntrian({Key? key}) : super(key: key);

  @override
  _WidgetTitleAntrianState createState() => _WidgetTitleAntrianState();
}

class _WidgetTitleAntrianState extends State<WidgetTitleAntrian> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child:
                      Text("Antrian Saat ini", style: MyStyle.textTitleBlack),
                ),
              ],
            ),
            Text(
                "Silahkan datang ke FO dan membawa KTP anda \nuntuk melakukan registrasi ulang"),
          ],
        ));
  }
}
