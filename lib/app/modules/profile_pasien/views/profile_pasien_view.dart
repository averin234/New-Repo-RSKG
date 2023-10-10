import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rskgcare/app/routes/app_pages.dart';

import '../../../data/componen/my_font_size.dart';
import '../../home/views/home_view.dart';
import '../controllers/profile_pasien_controller.dart';
import 'widgets/card_profile.dart';

class ProfilePasienView extends GetView<ProfilePasienController> {
  const ProfilePasienView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (context) =>
                  HomeView()), // Ganti dengan halaman home Anda
        );
        return true;
      },
      child: Scaffold(
        backgroundColor: Color(0xff4babe7),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              snap: true,
              stretch: true,
              leading: IconButton(
                  icon: const Icon(Icons.arrow_circle_left_rounded),
                  color: Colors.blue,
                  iconSize: 40,
                  onPressed: () {
                    Get.back();
                  }),
              title: Text(
                "Profile Pasien",
                style: GoogleFonts.nunito(
                    fontSize: MyFontSize.large1, fontWeight: FontWeight.bold),
              ),
              actions: [
                IconButton(
                  onPressed: () => Get.toNamed(Routes.EDIT_PROFILE),
                  icon: const Icon(
                    Icons.edit_square,
                    color: Colors.blue,
                  ),
                ),
              ],
              bottom: AppBar(
                toolbarHeight: 0,
              ),
            ),
            // Other Sliver Widgets
            SliverList(
              delegate: SliverChildListDelegate([
                Column(
                  children: [
                    CardProfile(readOnly: true),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
