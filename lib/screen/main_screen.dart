import 'package:barber_shop/screen/responsive_layout.dart';
import 'package:barber_shop/widget/custom_drawer.dart';
import 'package:barber_shop/widget/home/image_home.dart';
import 'package:barber_shop/widget/home/text_home.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      body: ResponsivelLayout(
        mobile: Stack(
          children: [
            ImageHome(size: MediaQuery.of(context).size),
            TextHome(),
          ],
        ),
        tablet: Stack(
          children: [
            ImageHome(size: MediaQuery.of(context).size),
            TextHome(),
          ],
        ),
        desktop: Stack(
          children: [
            ImageHome(size: MediaQuery.of(context).size),
            Row(
              children: [
                Expanded(flex: 2, child: CustomDrawer()),
                Expanded(flex: 10, child: TextHome()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
