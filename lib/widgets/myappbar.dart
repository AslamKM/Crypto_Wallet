import 'package:crypto_wallet/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(
            CupertinoIcons.square_grid_2x2_fill,
            size: 29,
          ),
          CircleAvatar(
            radius: 23,
            backgroundImage: AssetImage('avatar.jpeg'),
          )
        ],
      ),
    );
  }
}
