import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';
import 'package:mxplayerclone/utils/imageconstant.dart';
import 'package:mxplayerclone/view/Profilescreen/profilescreen.dart';
import 'package:mxplayerclone/view/Profilescreen/updates.dart';
import 'package:mxplayerclone/view/videoscreen/Movies/moviescreen.dart';
import 'package:mxplayerclone/view/videoscreen/Mxvd/mxvdesiscreen.dart';
import 'package:mxplayerclone/view/videoscreen/Mycorner/mycorner.dart';
import 'package:mxplayerclone/view/videoscreen/Playground/playgroundscreen.dart';
import 'package:mxplayerclone/view/videoscreen/Showscreen/showscreen.dart';
import 'package:mxplayerclone/view/videoscreen/home/homescreen.dart';

class Videoscreen extends StatefulWidget {
  const Videoscreen({super.key});

  @override
  State<Videoscreen> createState() => _VideoscreenState();
}

class _VideoscreenState extends State<Videoscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        initialIndex: 0,
        animationDuration: const Duration(milliseconds: 100),
        child: Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: Image.asset(
                Imageconstants.applogo,
              ),
            ),
            titleSpacing: 0,
            title: Row(
              children: [
                Text(
                  "MX",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w900, fontSize: 17),
                ),
                Text(
                  "PLAYER",
                  style: GoogleFonts.roboto(fontSize: 17),
                ),
              ],
            ),
            actions: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.cast,
                  color: Colorconstants.textcolor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Updates(),
                          ));
                    },
                    child: const Icon(
                      Icons.notifications_none_sharp,
                      color: Colorconstants.textcolor,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Profilescreen(),
                          ));
                    },
                    child: const CircleAvatar(
                      radius: 15,
                      backgroundColor: Colorconstants.lightshadeblue,
                      child: Icon(
                        Icons.person_4_rounded,
                        color: Colorconstants.greywhite,
                      ),
                    )),
              ),
            ],
            bottom: TabBar(
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: const Color(0xff000000),
              onTap: (value) {
                print(value);
              },
              labelStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black),
              unselectedLabelStyle:
                  const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
              dividerColor: Colors.transparent,
              dividerHeight: 6,
              tabs: const [
                Tab(
                  child: Icon(
                    Icons.home,
                    size: 22,
                  ),
                ),
                Tab(
                  child: Text(
                    "SHOWS",
                  ),
                ),
                Tab(
                  child: Text("MOVIES"),
                ),
                Tab(
                  child: Text("PLAYGROUND"),
                ),
                Tab(
                  child: Text("MX VDESI"),
                ),
                Tab(
                  child: Text("MY CORNER"),
                )
              ],
            ),
          ),
          body: const TabBarView(children: [
            Homescreen(),
            Showscreen(),
            Moviescreen(),
            Playgroundscreen(),
            Mxvdesiscreen(),
            MycornerScreen()
          ]),
        ));
  }
}
