import 'package:barber_shop/screen/home/home_screen.dart';
import 'package:barber_shop/screen/responsive_layout.dart';
import 'package:barber_shop/widget/custom_drawer.dart';
import 'package:barber_shop/widget/home/text_home.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Container(
      width: _size.width,
      height: _size.height,
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: const AssetImage('assets/home_background.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.3),
            BlendMode.dstATop,
          ),
        ),
      ),
      child: Scaffold(
        key: _scaffoldKey,
        drawer: ResponsivelLayout.isMobile(context)
            ? CustomDrawer(size: _size)
            : null,
        backgroundColor: Colors.transparent,
        body: ResponsivelLayout(
          mobile: SafeArea(
            child: HomeScreen(
              size: _size,
              scaffoldKey: _scaffoldKey,
            ),
          ),
          tablet: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: CustomDrawer(size: _size),
                ),
                Expanded(
                  flex: 10,
                  child: TextHome(size: _size),
                ),
              ],
            ),
          ),
          desktop: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: CustomDrawer(size: _size),
              ),
              Expanded(
                flex: 10,
                child: TextHome(size: _size),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
