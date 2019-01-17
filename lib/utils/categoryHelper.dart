import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cupertino_icons/placeholder.txt';
import 'dart:math';

class CategoryHelper {
  static Widget getIcon(String category) {
    switch (category) {
      case "Perfiles":
        return Transform.rotate(
          angle: -pi / 3.9,
          child: Icon(FontAwesomeIcons.equals),
        );
        // RotatedBox(
        //   quarterTurns: 1,
        //   child: Icon(FontAwesomeIcons.bars),
        // );
        break;

      case "Paneles":
        var panels = IconData(0xf482,
            fontFamily: CupertinoIcons.iconFont,
            fontPackage: CupertinoIcons.iconFontPackage);
        return Icon(panels);
        break;

      case "Varios":
        return Icon(FontAwesomeIcons.toolbox);
        break;

      case "Cinta":
        return Icon(FontAwesomeIcons.tape);
        break;

      case "Silicona":
        return Icon(Icons.colorize);
        break;

      case "Pintura":
        return Icon(Icons.format_paint);
        break;

      case "Electrico":
        return Icon(Icons.power);
        break;

      default:
        return Icon(FontAwesomeIcons.toolbox);
    }
  }
}
