import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextHome extends StatefulWidget {
  const TextHome({Key? key}) : super(key: key);

  @override
  _TextHomeState createState() => _TextHomeState();
}

class _TextHomeState extends State<TextHome> {
  var textStyle = GoogleFonts.openSansCondensed().copyWith(
    color: Colors.white,
    fontSize: 75,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      margin: const EdgeInsets.only(left: 16.0, top: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'THE\nBARBER\nSHOP',
            style: textStyle,
          ),
          ElevatedButton(
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
            child: Text(
              'BOOK APROMISSE',
              style: GoogleFonts.openSansCondensed().copyWith(
                color: Colors.black,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
