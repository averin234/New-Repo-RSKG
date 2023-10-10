import 'package:flutter/material.dart';

import '../../text_column.dart';

class WorkTextColumn extends StatelessWidget {
  const WorkTextColumn();

  @override
  Widget build(BuildContext context) {
    return const TextColumn(
      title: 'Rumah Sakit Budi Kemuliaan',
      text: 'Meningkatkan kepuasan pasien dan kesejahteraan karyawan.',
    );
  }
}
