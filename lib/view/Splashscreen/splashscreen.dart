import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mxplayerclone/bottomnavbar/bottomnavbarscreen.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';
import 'package:mxplayerclone/utils/imageconstant.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _MyAppState();
}

class _MyAppState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Bottomnavbarscreen(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Imageconstants.applogo,
              height: 100,
              width: 115,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 9),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("MX",
                    style: GoogleFonts.libreCaslonText(
                        color: Colorconstants.textcolor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                Text("PLAYER",
                    style: GoogleFonts.libreCaslonText(
                        color: Colorconstants.textcolor,
                        fontSize: 17,
                        fontWeight: FontWeight.normal)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
