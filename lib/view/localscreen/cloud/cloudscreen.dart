import 'package:flutter/material.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';

class Cloudscreen extends StatefulWidget {
  const Cloudscreen({super.key});

  @override
  State<Cloudscreen> createState() => _CloudscreenState();
}

class _CloudscreenState extends State<Cloudscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colorconstants.primaryblue,
        leading: IconButton(
          onPressed: () => Navigator.pop(context, true),
          icon: const Icon(Icons.arrow_back),
          color: Colorconstants.primarywhite,
        ),
        titleSpacing: 0,
        titleTextStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colorconstants.primarywhite),
        title: const Text("Cloud Drive"),
      ),
      body: Container(
        width: 399,
        height: 900,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/images/Screenshot_20241111-211427_MX Player.jpg"),
                fit: BoxFit.fill)),
      ),
    );
  }
}
