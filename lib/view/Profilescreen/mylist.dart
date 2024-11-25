import 'package:flutter/material.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';

class Mylist extends StatefulWidget {
  const Mylist({super.key});

  @override
  State<Mylist> createState() => _MylistState();
}

class _MylistState extends State<Mylist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context, true),
            icon: const Icon(Icons.arrow_back)),
        titleSpacing: 0,
        titleTextStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colorconstants.textcolor),
        title: const Text("My List"),
      ),
      body: Image.asset(
        "assets/images/MYList.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
