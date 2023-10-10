import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rskgcare/app/data/componen/my_colors.dart';
import 'package:rskgcare/app/data/componen/my_font_size.dart';
import 'package:rskgcare/app/routes/app_pages.dart';
import 'custom_card.dart';

class WidgetStraggeredGridView extends StatelessWidget {
  const WidgetStraggeredGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: StaggeredGrid.count(
        crossAxisCount: 3,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: [
          CustomCard(
            onTap: () {
              Get.toNamed(Routes.REGISTER_RS);
            },
            shadow: false,
            shadowBlur: 0,
            width: double.infinity,
            bgColor: MyColors.white,
            borderRadius: BorderRadius.circular(15),
            padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomCard(
                  shadow: false,
                  height: 50,
                  width: 50,
                  borderRadius: BorderRadius.circular(100),
                  child: Center(
                    child: SvgPicture.asset("assets/images/regis.svg"),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Registrasi \nRS",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontSize: MyFontSize.small3,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          CustomCard(
            onTap: () {
              Get.toNamed(Routes.REGISTER_TELEMEDIC);
            },
            shadow: false,
            shadowBlur: 0,
            width: double.infinity,
            bgColor: MyColors.white,
            borderRadius: BorderRadius.circular(15),
            padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomCard(
                    shadow: false,
                    height: 50,
                    width: 50,
                    borderRadius: BorderRadius.circular(100),
                    child: Center(
                      child: SvgPicture.asset("assets/images/tele.svg"),
                    )),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Registrasi \nHemodalisa",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontSize: MyFontSize.small3,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          CustomCard(
            onTap: () {
              Get.toNamed(Routes.DAFTAR_ANTRIAN);
            },
            shadow: false,
            shadowBlur: 0,
            width: double.infinity,
            bgColor: MyColors.white,
            borderRadius: BorderRadius.circular(15),
            padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomCard(
                    shadow: false,
                    height: 50,
                    width: 50,
                    borderRadius: BorderRadius.circular(100),
                    child: Center(
                      child: SvgPicture.asset("assets/images/antri.svg"),
                    )),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Daftar \nAntrean",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontSize: MyFontSize.small3,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          CustomCard(
            onTap: () {
              Get.toNamed(Routes.RIWAYAT_MEDIS);
            },
            shadow: false,
            shadowBlur: 0,
            width: double.infinity,
            bgColor: MyColors.white,
            borderRadius: BorderRadius.circular(15),
            padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomCard(
                    shadow: false,
                    height: 50,
                    width: 50,
                    borderRadius: BorderRadius.circular(100),
                    child: Center(
                      child: SvgPicture.asset("assets/images/riwayat.svg"),
                    )),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Riwayat \nMedis",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontSize: MyFontSize.small3,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          CustomCard(
            onTap: () {
              Get.toNamed(Routes.RUBAH_PASSWORD);
            },
            shadow: false,
            shadowBlur: 0,
            width: double.infinity,
            bgColor: MyColors.white,
            borderRadius: BorderRadius.circular(15),
            padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomCard(
                    shadow: false,
                    height: 50,
                    width: 50,
                    borderRadius: BorderRadius.circular(100),
                    child: Center(
                      child: SvgPicture.asset("assets/images/profile.svg"),
                    )),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Profile \nPasien",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontSize: MyFontSize.small3,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          CustomCard(
            onTap: () => showModalBottomSheet(
              showDragHandle: true,
              context: context,
              enableDrag: false,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              builder: (context) => buildSheet(),
            ),
            shadow: false,
            shadowBlur: 0,
            width: double.infinity,
            bgColor: MyColors.white,
            borderRadius: BorderRadius.circular(15),
            padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomCard(
                    shadow: false,
                    height: 65,
                    width: 60,
                    borderRadius: BorderRadius.circular(100),
                    child: Center(
                      child: Image.asset(
                        'assets/images/info.png',
                        width: 55,
                        fit: BoxFit.cover,
                      ),
                    )),
                const SizedBox(
                  height: 0,
                ),
                Text(
                  "RSKG \nHabibi Ainun",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontSize: MyFontSize.small3,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSheet() {
    return Container(
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.transparent,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
                child: Center(
              child: Column(
                children: [
                  Center(
                    child: SvgPicture.asset("assets/images/segerahadir.svg",
                        height: 240),
                  ),
                ],
              ),
            )),
          ],
        ));
  }
}
