import 'package:animated_container_in_flutter/theme/color_palette.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final String _title = 'Animated Container';
  const MyApp({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: ColorPalette.swColor
      ),
      routes: {
        '/':(context) => HomeScreen(title:_title),
      },
    );
  }
}
