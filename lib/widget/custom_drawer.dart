import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawer extends StatelessWidget {
  final Size size;
  const CustomDrawer({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      width: size.width * 0.55,
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            children: const <Widget>[
              ListTile(
                leading:
                    Icon(Icons.calendar_today_rounded, color: Colors.white),
                title:
                    Text("Agendamento", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.content_cut, color: Colors.white),
                title:
                    Text("Cabeleleiro", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.white,
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
              ),
            ),
            label: Text(
              'ENTRAR',
              style: GoogleFonts.openSansCondensed().copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            icon: const Icon(Icons.person, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
