import 'package:icons_helper/icons_helper.dart';
import 'package:flutter/material.dart';


class UselessIconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // Will return the font awesome icon named fiveHundredPx, if that didn't exist, it will try for the same in bundled icons, otherwise null

    return Icon(getIconUsingPrefix(name:'fa.fiveHundredPx'), color: Theme.of(context).backgroundColor, size: 12.0);

  }


}