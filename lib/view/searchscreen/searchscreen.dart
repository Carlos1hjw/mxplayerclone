import 'package:flutter/material.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';

class Searchscreen extends StatefulWidget {
  const Searchscreen({super.key});

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.only(top: 10),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Web Shows, Movies and More",
            hintStyle:
                TextStyle(color: Colorconstants.primarygrey, fontSize: 18),
            prefixIcon: Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Padding(
                padding: EdgeInsets.all(0.0),
                child: Icon(Icons.search, color: Colorconstants.textcolor),
              ),
            ),
            suffixIcon: Icon(
              Icons.mic,
              color: Colorconstants.textcolor,
            )),
      ),
    ));
  }
}
