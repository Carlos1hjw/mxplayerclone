import 'package:flutter/material.dart';

class Applang extends StatefulWidget {
  const Applang({super.key});

  @override
  State<Applang> createState() => _ApplangState();
}

class _ApplangState extends State<Applang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context, true),
          icon: const Icon(Icons.arrow_back),
        ),
        titleSpacing: 5,
        titleTextStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        title: const Text("App Languages"),
      ),
      body: Container(
        width: 399,
        height: 920,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Apptheme.jpg"),
                fit: BoxFit.fill)),
      ),
    );
  }
}
