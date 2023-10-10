import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rskgcare/app/modules/register/views/widget/calender.dart';
import 'package:rskgcare/app/modules/register/views/widget/entry_field.dart';
import '../../../../data/model/dropdown_model.dart';
import '../../controllers/register_controller.dart';
import 'mydropdown.dart';

class MyRegister extends GetView<RegisterController> {
  const MyRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).brightness == Brightness.light
            ? Color(0xffffffff)
            : Color(0xff404258),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'ISI DATA REGISTRASI',
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            MyEntryField(
              "NIK Pasien",
              maxLength: 16,
              controller: controller.nikPasienController,
              keyboardType: TextInputType.number,
            ),
            MyEntryField(
              "Nama Lengkap",
              controller: controller.namaController,
              keyboardType: TextInputType.name,
            ),
            MyEntryField(
              "Alamat Email",
              controller: controller.emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            MyEntryField(
              "No Telepon",
              maxLength: 13,
              controller: controller.noTelpController,
              keyboardType: TextInputType.phone,
            ),
            MyCalender(
              "Tanggal Lahir",
              controller: controller.tglLhrController,
            ),
            MyEntryField(
              "Tempat Lahir",
              controller: controller.tempatLhrController,
            ),
            MyEntryField(
              "Alamat",
              controller: controller.alamatController,
            ),
            _myDropDown(
              "Jenis Kelamin",
              items: controller.gender,
              controller: controller.jenisKelaminController,
            ),
            MyEntryField(
              "Alergi",
              controller: controller.alergiController,
            ),
            _myDropDown(
              "Golongan Darah",
              items: controller.golDar,
              controller: controller.golDarahController,
            ),
          ],
        ));
  }

  Widget _myDropDown(
    String title, {
    required TextEditingController controller,
    required List<Dropdowns> items,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style:
                GoogleFonts.nunito(fontSize: 13, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          MyDropDown(items: items, labelText: title, controller: controller),
        ],
      ),
    );
  }
}
