import 'package:flutter/material.dart';

import '../../../../../login/views/constants.dart';
import '../../icon_container.dart';

class CommunityLightCardContent extends StatelessWidget {
  const CommunityLightCardContent();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        const IconContainer(
          icon: Icons.person,
          padding: kPaddingS,
        ),
        IconContainer(
          icon: Icons.group,
          padding: kPaddingM,
        ),
        IconContainer(
          icon: Icons.insert_emoticon,
          padding: kPaddingS,
        ),
      ],
    );
  }
}
