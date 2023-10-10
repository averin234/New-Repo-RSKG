import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rskgcare/app/data/componen/fetch_data.dart';
import 'package:rskgcare/app/modules/daftar_antrian/controllers/daftar_antrian_controller.dart';
import 'package:rskgcare/app/modules/daftar_antrian/views/widgets/widget_listview_antrian.dart';
import 'package:rskgcare/app/modules/daftar_antrian/views/widgets/widgets_select_calender.dart';
import 'package:rskgcare/app/modules/home/views/widgets/widget_no_antri.dart';
import 'package:rskgcare/app/modules/shammer/shimmer_antrian.dart';
import '../../../routes/app_pages.dart';
import 'widgets/widget_listview_hemo.dart';

class DaftarAntrianView extends GetView<DaftarAntrianController> {
  const DaftarAntrianView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 210,
          elevation: 0,
          title: const Text('Daftar Antrian'),
          leading: IconButton(
              icon: const Icon(Icons.arrow_circle_left_rounded),
              color: Colors.blue,
              iconSize: 40,
              onPressed: () {
                Get.toNamed(Routes.HOME);
              }),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(AppBar().preferredSize.height),
            child: Column(
              children: [
                const HorizontalWeekCalendarPackage1(),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.only(
                      bottom: 10, left: 20, right: 20, top: 0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      color: Colors.grey[200],
                    ),
                    child: TabBar(
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        color: Color(0xff4babe7),
                      ),
                      tabs: const [
                        Tab(
                          text: 'Antrian Poli',
                        ),
                        Tab(
                          text: 'Antrian Hemodialisis',
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  FutureBuilder(
                      future: API.getDataPx(
                          noKtp: controller.dataPasien.noKtp ?? ''),
                      builder: (context, snapshot1) {
                        if (snapshot1.hasData &&
                            snapshot1.connectionState !=
                                ConnectionState.waiting &&
                            snapshot1.data != null) {
                          final scan = snapshot1.data!;
                          return Obx(() {
                            return FutureBuilder(
                                future: API.getJadwalPx(
                                  noKtp: controller.dataPasien.noKtp!,
                                  tgl: controller.date.value,
                                ),
                                builder: (context, snapshot) {
                                  if (snapshot.hasData &&
                                      snapshot.connectionState !=
                                          ConnectionState.waiting &&
                                      snapshot.data != null) {
                                    final data = snapshot.data!;
                                    if (data.code != 200) {
                                      return SizedBox(
                                        height: Get.height - 400,
                                        child: const Center(
                                          child: WidgetNoAntri(),
                                        ),
                                      );
                                    } else {
                                      return ListView.builder(
                                        itemCount: data.list!.length,
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemBuilder: (context, index) {
                                          final list = data.list!;
                                          return CardListViewAntrian(
                                            list: list[index],
                                            scan: scan,
                                          );
                                        },
                                      );
                                    }
                                  } else {
                                    return const Center(
                                      child: shimmerAntrian(),
                                    );
                                  }
                                });
                          });
                        } else {
                          return const Center(
                            child: shimmerAntrian(),
                          );
                        }
                      }),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  FutureBuilder(
                      future: API.getDataPx(
                          noKtp: controller.dataPasien.noKtp ?? ''),
                      builder: (context, snapshot1) {
                        if (snapshot1.hasData &&
                            snapshot1.connectionState !=
                                ConnectionState.waiting &&
                            snapshot1.data != null) {
                          final scan = snapshot1.data!;
                          return Obx(() {
                            return FutureBuilder(
                                future: API.getJadwalHemoPx(
                                  noKtp: controller.dataPasien.noKtp!,
                                  tgl: controller.date.value,
                                ),
                                builder: (context, snapshot) {
                                  if (snapshot.hasData &&
                                      snapshot.connectionState !=
                                          ConnectionState.waiting &&
                                      snapshot.data != null) {
                                    final data = snapshot.data!;
                                    if (data.code != 200) {
                                      return SizedBox(
                                        height: Get.height - 400,
                                        child: const Center(
                                          child: WidgetNoAntri(),
                                        ),
                                      );
                                    } else {
                                      return ListView.builder(
                                        itemCount: data.list!.length,
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemBuilder: (context, index) {
                                          final lists = data.list!;
                                          return CardListViewHemo(
                                            list: lists[index],
                                            scan: scan,
                                          );
                                        },
                                      );
                                    }
                                  } else {
                                    return const Center(
                                      child: shimmerAntrian(),
                                    );
                                  }
                                });
                          });
                        } else {
                          return const Center(
                            child: shimmerAntrian(),
                          );
                        }
                      }),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
