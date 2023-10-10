import 'package:flutter/material.dart';

import '../../text_column.dart';

class EducationTextColumn extends StatelessWidget {
  const EducationTextColumn();

  @override
  Widget build(BuildContext context) {
    return const TextColumn(
      title: 'Rumah Sakit Budi Kemuliaan',
      text:
          'Memberikan pelayanan kesehatan yang sesuai dengan kemajuan ilmu pengetahuan dan teknologi.',
    );
  }
}
