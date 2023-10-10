import 'package:flutter/material.dart';

import '../../../login/views/constants.dart';
import '../../../login/views/widgets/logo.dart';

class Header extends StatelessWidget {
  final VoidCallback onSkip;

  const Header({
    super.key,
    required this.onSkip,
    required Animation<double> animation,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Logo(
          color: kWhite,
          size: 32.0,
        ),
        GestureDetector(
          onTap: onSkip,
          child: Text(
            'Skip',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: kWhite,
                ),
          ),
        ),
      ],
    );
  }
}
