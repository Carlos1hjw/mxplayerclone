import 'package:flutter/material.dart';

class Musicplayfolders extends StatefulWidget {
  const Musicplayfolders({super.key});

  @override
  State<Musicplayfolders> createState() => _MusicplayfoldersState();
}

class _MusicplayfoldersState extends State<Musicplayfolders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 399,
        height: 1000,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/images/Screenshot_20241125-110811_MX Player - Copy.jpg"),
                fit: BoxFit.fill)),
      ),
    );
  }
}
