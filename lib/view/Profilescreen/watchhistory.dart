import 'package:flutter/material.dart';

class Watchhistory extends StatelessWidget {
  const Watchhistory({super.key});

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
        title: const Text("Watch History"),
      ),
      body: Container(
        width: 399,
        height: 920,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Watchhistoryr.jpg"),
                fit: BoxFit.fill)),
      ),
    );
  }
}
