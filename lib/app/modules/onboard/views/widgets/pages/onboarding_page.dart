import 'package:flutter/material.dart';

import '../../../../login/views/constants.dart';

class OnboardingPage extends StatelessWidget {
  final int number;
  final Widget lightCardChild;
  final Widget darkCardChild;
  final Animation<Offset> lightCardOffsetAnimation;
  final Animation<Offset> darkCardOffsetAnimation;
  final Widget textColumn;

  const OnboardingPage({
    super.key,
    required this.number,
    required this.lightCardChild,
    required this.darkCardChild,
    required this.lightCardOffsetAnimation,
    required this.darkCardOffsetAnimation,
    required this.textColumn,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/rm_pluit.png',
          height: 400,
          width: 400,
        ),
        SizedBox(height: number % 2 == 1 ? 50.0 : 25.0),
        AnimatedSwitcher(
          duration: kCardAnimationDuration,
          child: textColumn,
        ),
      ],
    );
  }
}
