import 'package:flutter/material.dart';

class CustomIconDrawer extends StatelessWidget {
  final Size size;
  final GlobalKey<ScaffoldState> scaffoldKey;

  const CustomIconDrawer({
    Key? key,
    required this.size,
    required this.scaffoldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.1,
      alignment: Alignment.bottomLeft,
      child: IconButton(
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        onPressed: () {
          scaffoldKey.currentState!.openDrawer();
        },
      ),
    );
  }
}
