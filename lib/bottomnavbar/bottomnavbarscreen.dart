import 'package:flutter/material.dart';
import 'package:mxplayerclone/view/localscreen/localscreen.dart';
import 'package:mxplayerclone/view/searchscreen/searchscreen.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';
import 'package:mxplayerclone/view/videoscreen/videoscreen.dart';


class Bottomnavbarscreen extends StatefulWidget {
  const Bottomnavbarscreen({super.key});

  @override
  State<Bottomnavbarscreen> createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Bottomnavbarscreen> {
  List bottomnav= [
const Localscreen(),
const Videoscreen(),
const Searchscreen()
  ];
  int selectedindex=0;
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body:bottomnav[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        onTap: (int value) {
        selectedindex =value;
        setState(() {

        });
        },
        unselectedItemColor: Colorconstants.primarygrey,
        selectedItemColor: Colorconstants.primaryblue,
        backgroundColor: Colorconstants.lightgreywhite,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.folder),label: "Local"),
              BottomNavigationBarItem(icon: Icon(Icons.play_circle_fill),label: "Video  "),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),

      ],),
    );
  }
}