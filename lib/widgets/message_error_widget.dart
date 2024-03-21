import 'package:flutter/material.dart';

import '../constants/constants.dart';

class MessageError extends StatelessWidget {
  const MessageError({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Oops there was an error, try later",
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Colors.black),
          overflow: TextOverflow.ellipsis,
        ),
        Icon(
          Icons.warning_outlined,
          color: Colors.yellow,
          size: height(context) / 35,
        ),
      ],
    ));
  }
}
