import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/info_pluitcare_controller.dart';

class InforskgcareView extends GetView<InforskgcareController> {
  const InforskgcareView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info RSBK HealthCare'),
        centerTitle: true,
        elevation: 1,
      ),
      body: Center(
        child: Text(
          'InforskgcareView is working',
          style: GoogleFonts.nunito(fontSize: 20),
        ),
      ),
    );
  }
}
