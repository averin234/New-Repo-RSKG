import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rskgcare/app/modules/edit-profile/views/widgets/card_edit.dart';
import 'package:text_scroll/text_scroll.dart';

import '../../../data/componen/my_font_size.dart';
import '../../profile_pasien/views/profile_pasien_view.dart';
import '../../rubah_password/views/rubah_password_view.dart';
import '../controllers/edit_profile_controller.dart';

class EditProfileView extends GetView<EditProfileController> {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (context) =>
                  RubahPasswordView()), // Ganti dengan halaman home Anda
        );
        return true;
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).brightness == Brightness.light
            ? Color(0xfff6f9fe)
            : Color(0xff2C3333),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Theme.of(context).brightness == Brightness.light
                  ? Colors.white
                  : Color(0xff2C3333),
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
                "Edit Profile",
                style: GoogleFonts.nunito(
                    fontSize: MyFontSize.large1, fontWeight: FontWeight.bold),
              ),
              bottom: AppBar(
                toolbarHeight: 0,
              ),
            ),
            // Other Sliver Widgets
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 4,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'Penting !!',
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 13),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextScroll(
                          'Data diri anda terekam di database RSBK, Mohon periksa kembali data diri anda, dan lakukan refresh saat melakukan perubahan data diri',
                          textDirection: TextDirection.ltr,
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 11),
                          intervalSpaces: 10,
                          velocity: const Velocity(
                            pixelsPerSecond: Offset(8, 0),
                          ),
                        ),
                      ],
                    )),
                const MyRegister1(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
