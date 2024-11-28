import 'package:flutter/material.dart';

const List<Color> colorThemes = [
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.purpleAccent,
];

class AppTheme {
  final int selectColor;

  AppTheme({this.selectColor = 0})
      : assert(selectColor >= 0 && selectColor <= colorThemes.length - 1,
            'Color must be between 0 and ${colorThemes.length}');
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorThemes[selectColor],
      brightness: Brightness.light,
    );
  }
}
