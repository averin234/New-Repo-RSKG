import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rskgcare/app/data/componen/images.dart';
import 'package:rskgcare/app/modules/profile_pasien/controllers/profile_pasien_controller.dart';

class CardProfile extends StatelessWidget {
  final bool readOnly;
  const CardProfile({
    super.key,
    required this.readOnly,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      right: 130, left: 130, top: 20, bottom: 20),
                  decoration: const BoxDecoration(
                    color: Color(0xff4babe7),
                  ),
                  child: _poto(),
                ),
                _emailPasswordWidget(readOnly),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _entryField(
    String title, {
    bool isPassword = false,
    int? maxLength,
    required bool readOnly,
    TextInputType keyboardType = TextInputType.text,
    required TextEditingController controller,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style:
                GoogleFonts.nunito(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            readOnly: readOnly,
            controller: controller,
            keyboardType: keyboardType,
            maxLength: maxLength,
            obscureText: isPassword,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                fillColor: Color(0xffecf8ff),
                filled: true),
          )
        ],
      ),
    );
  }

  Widget _poto() {
    final controller = Get.put(ProfilePasienController());
    return GestureDetector(
      onTap: () async {
        XFile? image =
            await ImagePicker().pickImage(source: ImageSource.gallery);
        if (image != null) {
          controller.fileImage.value = image.path;
        }
      },
      child: Obx(() {
        return controller.fileImage.isEmpty
            ? CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                  controller.dataPasien.value.fotoPasien != 'null'
                      ? controller.dataPasien.value.fotoPasien!
                      : controller.dataPasien.value.jenisKelamin == 'L'
                          ? Avatar.lakiLaki
                          : Avatar.perempuan,
                ),
              )
            : CircleAvatar(
                radius: 70,
                backgroundImage: FileImage(
                  File(controller.fileImage.value),
                ),
              );
      }),
    );
  }

  Widget _emailPasswordWidget(bool readOnly) {
    final controller = Get.put(ProfilePasienController());
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'DATA DIRI',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          _entryField(
            "NIK Pasien :",
            readOnly: readOnly,
            controller: controller.nikController,
            maxLength: 17,
            keyboardType: TextInputType.number,
          ),
          _entryField(
            "Nama Lengkap :",
            readOnly: readOnly,
            controller: controller.namaController,
          ),
          _entryField(
            "Alamat Email :",
            readOnly: readOnly,
            keyboardType: TextInputType.emailAddress,
            controller: controller.emailController,
          ),
          _entryField(
            "No Telepon :",
            readOnly: readOnly,
            keyboardType: TextInputType.phone,
            maxLength: 13,
            controller: controller.noTelpController,
          ),
          _entryField(
            "Tanggal Lahir :",
            readOnly: readOnly,
            controller: controller.tglLhrController,
          ),
          _entryField(
            "Usia :",
            readOnly: readOnly,
            controller: controller.usiaController,
          ),
          _entryField(
            "Tempat Lahir :",
            readOnly: readOnly,
            controller: controller.tmptLhrController,
          ),
          _entryField(
            "Alamat :",
            readOnly: readOnly,
            controller: controller.alamatController,
          ),
          _entryField(
            "Jenis Kelamin :",
            readOnly: readOnly,
            controller: controller.genderController,
          ),
          _entryField(
            "Alergi :",
            readOnly: readOnly,
            controller: controller.alergiController,
          ),
          _entryField(
            "Golongan Darah :",
            readOnly: readOnly,
            controller: controller.golDarController,
          ),
        ],
      ),
    );
  }
}
