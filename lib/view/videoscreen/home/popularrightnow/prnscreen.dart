import 'package:flutter/material.dart';
import 'package:mxplayerclone/db2.dart';

class Prnscreen extends StatefulWidget {
  const Prnscreen({super.key});

  @override
  State<Prnscreen> createState() => _PrnscreenState();
}

class _PrnscreenState extends State<Prnscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context, true),
            icon: const Icon(Icons.arrow_back)),
        titleSpacing: 0,
        titleTextStyle: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
        title: const Text("Popular Right Now"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              itemCount: Db2.popularrightnow.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 11,
                mainAxisSpacing: 15,
                childAspectRatio: .7,
              ),
              itemBuilder: (context, index) {
                return Container(
                  width: 35,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.redAccent,
                      image: DecorationImage(
                          image: AssetImage(Db2.popularrightnow[index]),
                          fit: BoxFit.cover,
                          filterQuality: FilterQuality.high)),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
