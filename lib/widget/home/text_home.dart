import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextHome extends StatefulWidget {
  final Size size;

  const TextHome({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  _TextHomeState createState() => _TextHomeState();
}

class _TextHomeState extends State<TextHome> {
  var textStyle = GoogleFonts.openSansCondensed().copyWith(
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: widget.size.height * 0.6,
        width: widget.size.width * 0.6,
        child: FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.contain,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Barbearia', style: textStyle),
              Text(
                'Froe\'s',
                style: GoogleFonts.cookie().copyWith(
                  color: Colors.white,
                  //fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
