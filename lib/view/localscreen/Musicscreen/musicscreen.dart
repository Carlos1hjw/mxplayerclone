import 'package:flutter/material.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';
import 'package:mxplayerclone/view/localscreen/Musicscreen/musicpages/albums.dart';
import 'package:mxplayerclone/view/localscreen/Musicscreen/musicpages/artists.dart';
import 'package:mxplayerclone/view/localscreen/Musicscreen/musicpages/folders.dart';
import 'package:mxplayerclone/view/localscreen/Musicscreen/musicpages/playlists.dart';
import 'package:mxplayerclone/view/localscreen/Musicscreen/musicpages/tracks.dart';

class Musicscreen extends StatefulWidget {
  const Musicscreen({super.key});

  @override
  State<Musicscreen> createState() => _MusicscreenState();
}

class _MusicscreenState extends State<Musicscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        initialIndex: 0,
        animationDuration: const Duration(milliseconds: 100),
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () => Navigator.pop(context, true),
                icon: const Icon(Icons.arrow_back)),
            titleSpacing: 0,
            titleTextStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colorconstants.textcolor),
            title: const Text("MUSIC"),
            actions: const [Icon(Icons.more_vert)],
            bottom: TabBar(
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: const Color(0xff000000),

              onTap: (value) {
                print(
                    value); // Navigator.push(context, MaterialPageRoute(builder: (context) => Localscreen(),))
              },
              // labelColor: Colors.red,
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
                  child: Text(
                    "Tracks",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Tab(
                  child: Text(
                    "Playlists",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Tab(
                  child: Text(
                    "Albums",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Tab(
                  child: Text(
                    "Artists",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Tab(
                  child: Text(
                    "Folders",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          body: const TabBarView(children: [
            Tracks(),
            Playlists(),
            Albums(),
            Artists(),
            Folders()
          ]),
        ));
  }
}
