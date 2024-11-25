import 'package:flutter/material.dart';

class Custompopupplay extends StatefulWidget {
  const Custompopupplay({super.key});

  @override
  State<Custompopupplay> createState() => _CustompopupplayState();
}

class _CustompopupplayState extends State<Custompopupplay> {
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
        title: const Text("Custom Pop-Up Play"),
      ),
      body: Container(
        width: 399,
        height: 920,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Cutompopupplay.jpg"),
                fit: BoxFit.fill)),
      ),
    );
  }
}
