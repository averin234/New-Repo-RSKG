import 'package:flutter/material.dart';
import 'package:rskgcare/app/data/componen/images.dart';
import 'package:rskgcare/app/routes/app_pages.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:text_scroll/text_scroll.dart';

import '../../home/views/home_view.dart';
import '../controllers/rubah_password_controller.dart';

class RubahPasswordView extends StatefulWidget {
  const RubahPasswordView({super.key});

  @override
  State<RubahPasswordView> createState() => _RubahPasswordViewState();
}

class _RubahPasswordViewState extends State<RubahPasswordView> {
  final controller = Get.put(RubahPasswordController());
  final RefreshController _refreshController = RefreshController();

  Future<void> _onRefresh() async {
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      entries.add(entries.length);
    });
    _refreshController.refreshCompleted();
  }

  List<int> entries = List<int>.generate(5, (int i) => i);

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
        backgroundColor: Theme.of(context).brightness == Brightness.light
            ? Color(0xfff6f9fe)
            : Color(0xff2C3333),
        appBar: AppBar(
          backgroundColor: Theme.of(context).brightness == Brightness.light
              ? Color(0xfff6f9fe)
              : Color(0xff2C3333),
          toolbarHeight: 70,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.toNamed(Routes.HOME);
            },
            iconSize: 40,
            color: Colors.blue,
            icon: const Icon(Icons.arrow_circle_left_rounded),
          ),
          actions: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => Get.toNamed(Routes.EDIT_PROFILE),
                  icon: const Icon(
                    Icons.edit_note_rounded,
                    color: Colors.blue,
                    size: 40,
                  ),
                ),
                Text('Edit', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ],
          title: const Text('Profile Pasien'),
        ),
        body: SmartRefresher(
          controller: _refreshController,
          onRefresh: _onRefresh,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
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
                            'Data diri anda terekam di database Rumah Sakit Budi Kemuliaan, Mohon periksa kembali data diri anda, dan lakukan refresh saat melakukan perubahan data diri',
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
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      controller.dataRegist.value.fotoPasien != 'null'
                          ? controller.dataRegist.value.fotoPasien!
                          : controller.dataRegist.value.jenisKelamin == 'L'
                              ? Avatar.lakiLaki
                              : Avatar.perempuan,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    controller.dataRegist.value.namaPasien ?? '',
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    controller.dataRegist.value.noKtp ?? '',
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.white
                          : Color(0xff404258),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Data Diri',
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Email :',
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          controller.dataRegist.value.email ?? '',
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'No. HP :',
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          controller.dataRegist.value.noHp ?? '',
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tgl Lahir',
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          (controller.dataRegist.value.tanggalLahir ?? '')
                              .substring(0, 10),
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Umur',
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          controller.dataRegist.value.umur ?? '',
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tmp Lahir',
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          controller.dataRegist.value.tempatLahir ?? '',
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Alamat',
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          controller.dataRegist.value.alamat ?? '',
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Jenis Kelamin',
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          controller.dataRegist.value.jenisKelamin ?? '',
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Alergi',
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          controller.dataRegist.value.alergi ?? '',
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Golongan Darah',
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          controller.dataRegist.value.golonganDarah ?? '',
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
