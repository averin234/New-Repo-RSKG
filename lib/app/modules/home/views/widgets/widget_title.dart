import 'package:flutter/material.dart';
import 'package:rskgcare/app/data/componen/my_style.dart';

class WidgetTitle extends StatefulWidget {
  const WidgetTitle({Key? key}) : super(key: key);

  @override
  _WidgetTitleState createState() => _WidgetTitleState();
}

class _WidgetTitleState extends State<WidgetTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 0, 10, 0),
      child: Text("Fitur", style: MyStyle.textTitleBlack),
    );
  }
}
