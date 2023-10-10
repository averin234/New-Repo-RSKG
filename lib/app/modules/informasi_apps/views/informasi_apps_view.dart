import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/informasi_apps_controller.dart';

class InformasiAppsView extends GetView<InformasiAppsController> {
  const InformasiAppsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('Informasi Apps'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'InformasiAppsView is working',
          style: GoogleFonts.nunito(fontSize: 20),
        ),
      ),
    );
  }
}
