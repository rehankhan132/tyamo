import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHeading extends StatelessWidget {
  final String mainText;
  final String subText;
  final String logo;
  final double fontSize;
  final double logoSize;

  AuthHeading(
      {required this.fontSize,
      required this.logo,
      required this.logoSize,
      required this.mainText,
      required this.subText});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  mainText,
                  style: GoogleFonts.poppins(
                      fontSize: fontSize,
                      color: const Color(0xff00205C),
                      fontWeight: FontWeight.bold),
                ),
                Container(
                    width: logoSize,
                    height: logoSize,
                    child: Image.asset(
                      logo,
                      filterQuality: FilterQuality.high,
                    )),
              ],
            ),
            Text(
              subText,
              style: GoogleFonts.poppins(
                  fontSize: fontSize,
                  color: const Color(0xff00205C),
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
