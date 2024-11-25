import 'package:flutter/material.dart';

class Sharescreen extends StatefulWidget {
  const Sharescreen({super.key});

  @override
  State<Sharescreen> createState() => _SharescreenState();
}

class _SharescreenState extends State<Sharescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context, true),
            icon: const Icon(Icons.arrow_back)),
        actions: const [
          Icon(Icons.person_add_alt_1_outlined),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.more_vert)
        ],
      ),
      body: Container(
        width: 399,
        height: 920,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/images/Screenshot_20241111-211405_MX Player.jpg"),
                fit: BoxFit.fill)),
      ),
    );
  }
}
