import 'package:animated_container_in_flutter/theme/color_palette.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool chng = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: ColorPalette.scaffoldBgColor,
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: InkWell(
          onTap: () => setState(() {
            chng = !chng;
          }),
          child: AnimatedAlign(
            alignment: chng ? Alignment.topLeft : Alignment.bottomRight,
            duration: const Duration(seconds: 1),
            curve: Curves.decelerate,
            child: AnimatedContainer(
            duration: const Duration(seconds: 2),
            curve: Curves.decelerate,
            color:chng ? ColorPalette.secondaryColor : ColorPalette.primaryColor,
            height: chng ? size.height / 8 : size.height / 4,
            width: chng ? size.width / 4 : size.width / 2,
          ),
          )
        ));
  }
}
