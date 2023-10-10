import 'package:flutter/material.dart';

import '../../../../../login/views/constants.dart';
import '../../icon_container.dart';

class EducationLightCardContent extends StatelessWidget {
  const EducationLightCardContent();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        const IconContainer(
          icon: Icons.brush,
          padding: kPaddingS,
        ),
        IconContainer(
          icon: Icons.camera_alt,
          padding: kPaddingM,
        ),
        IconContainer(
          icon: Icons.straighten,
          padding: kPaddingS,
        ),
      ],
    );
  }
}
