import 'package:barber_shop/widget/custom_icon_drawer.dart';
import 'package:flutter/material.dart';
import 'package:barber_shop/widget/home/text_home.dart';

class HomeScreen extends StatefulWidget {
  final Size size;
  final GlobalKey<ScaffoldState> scaffoldKey;

  const HomeScreen({
    Key? key,
    required this.size,
    required this.scaffoldKey,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomIconDrawer(size: widget.size, scaffoldKey: widget.scaffoldKey),
        TextHome(size: widget.size),
      ],
    );
  }
}
