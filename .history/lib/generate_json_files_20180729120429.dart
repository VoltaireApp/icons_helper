import 'dart:mirrors' as mirrors;
import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  print("Generating json files...");

  var iconsJson = {};
  final iconsMirror = mirrors.reflect(Icons);

  for(var icon in iconsMirror.staticMembers.keys)
  {
    print("Handling Icons.${icon}");
  }

}


