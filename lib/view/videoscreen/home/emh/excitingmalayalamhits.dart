import 'package:flutter/material.dart';
import 'package:mxplayerclone/db2.dart';
import 'package:mxplayerclone/view/videoscreen/home/emh/emhviewscreen.dart';

class Excitingmalayalamhits extends StatefulWidget {
  const Excitingmalayalamhits({super.key});

  @override
  State<Excitingmalayalamhits> createState() => _ExcitingmalayalamhitsState();
}

class _ExcitingmalayalamhitsState extends State<Excitingmalayalamhits> {
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
        title: const Text("Exciting Malayalam Hits"),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: Db2.excitingmalahits.length,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 11,
              mainAxisSpacing: 15,
              childAspectRatio: .7,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Emhviewscreen(),
                      ));
                },
                child: Container(
                  width: 35,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.redAccent,
                      image: DecorationImage(
                          image: AssetImage(Db2.excitingmalahits[index]),
                          fit: BoxFit.cover,
                          filterQuality: FilterQuality.high)),
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
