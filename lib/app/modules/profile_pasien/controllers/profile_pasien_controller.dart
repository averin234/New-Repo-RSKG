import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:rskgcare/app/data/componen/publics.dart';

class ProfilePasienController extends GetxController {
  //TODO: Implement ProfilePasienController
  final imageDummy =
      'https://images.soco.id/589-5-fakta-menarik-film-avatar-yang-kembali-tayang-5.jpg.jpg';
  final dataPasien = Publics.controller.getDataRegist;
  final nikController = TextEditingController();
  final noTelpController = TextEditingController();
  final namaController = TextEditingController();
  final tglLhrController = TextEditingController();
  final tmptLhrController = TextEditingController();
  final genderController = TextEditingController();
  final emailController = TextEditingController();
  final usiaController = TextEditingController();
  final golDarController = TextEditingController();
  final alergiController = TextEditingController();
  final alamatController = TextEditingController();
  final fileImage = ''.obs;

  Widget dropDown(
          {required List<String> items,
          required String labelText,
          required String selectedItem}) =>
      DropdownSearch<String>(
        popupProps: const PopupProps.menu(
          showSelectedItems: true,
        ),
        items: items,
        dropdownDecoratorProps: DropDownDecoratorProps(
          dropdownSearchDecoration: InputDecoration(
            labelText: labelText,
          ),
        ),
        onChanged: print,
        selectedItem: "Brazil",
      );

  @override
  void onInit() {
    nikController.text = dataPasien.value.noKtp ?? '';
    alamatController.text = dataPasien.value.alamat ?? '';
    alergiController.text = dataPasien.value.noKtp ?? '';
    emailController.text = dataPasien.value.email ?? '';
    genderController.text = dataPasien.value.jenisKelamin ?? '';
    golDarController.text = dataPasien.value.golonganDarah ?? '';
    namaController.text = dataPasien.value.namaPasien ?? '';
    noTelpController.text = dataPasien.value.noHp ?? '';
    tglLhrController.text = DateFormat('yyyy-MM-dd').format(
        dataPasien.value.tanggalLahir != null
            ? DateTime.parse(dataPasien.value.tanggalLahir!)
            : DateTime.now());
    tmptLhrController.text = dataPasien.value.tempatLahir ?? '';
    usiaController.text = dataPasien.value.umur ?? '';
    super.onInit();
  }
}
