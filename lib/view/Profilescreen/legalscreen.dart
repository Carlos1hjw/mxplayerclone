import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Legalscreen extends StatefulWidget {
  const Legalscreen({super.key});

  @override
  State<Legalscreen> createState() => _LegalscreenState();
}

class _LegalscreenState extends State<Legalscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context, true),
          icon: const Icon(Icons.arrow_back),
        ),
        titleSpacing: 0,
        title: Text(
          "Legal",
          style: GoogleFonts.roboto(fontWeight: FontWeight.w900, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
                onTap: () {},
                child: const SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Content Complaints",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ))),
            InkWell(
                onTap: () {},
                child: const SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Compilance Report",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ))),
            InkWell(
                onTap: () {},
                child: const SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Privacy Policy",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ))),
            InkWell(
                onTap: () {},
                child: const SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Terms of Service",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
