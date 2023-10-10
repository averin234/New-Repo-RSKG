import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_antrian_hemo_controller.dart';

class DetailAntrianHemoView extends GetView<DetailAntrianHemoController> {
  const DetailAntrianHemoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailAntrianHemoView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailAntrianHemoView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
