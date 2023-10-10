import 'package:flutter/material.dart';

import '../../../login/views/constants.dart';

class TextColumn extends StatelessWidget {
  final String title;
  final String text;

  const TextColumn({
    super.key,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: kWhite, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: kSpaceS),
        Text(
          text,
          textAlign: TextAlign.center,
          style:
              Theme.of(context).textTheme.titleMedium!.copyWith(color: kWhite),
        ),
      ],
    );
  }
}
