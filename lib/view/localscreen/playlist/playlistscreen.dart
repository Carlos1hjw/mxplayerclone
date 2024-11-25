import 'package:flutter/material.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';

class Playlistscreen extends StatefulWidget {
  const Playlistscreen({super.key});

  @override
  State<Playlistscreen> createState() => _PlaylistscreenState();
}

class _PlaylistscreenState extends State<Playlistscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(10.0),
          child: SizedBox(
              child: Text(
            "VIDEO PLAYLISTS",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
          )),
        ),
        leadingWidth: 300,
        actions: [
          IconButton(
              onPressed: () => Navigator.pop(context, true),
              icon: const Icon(Icons.close))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colorconstants.greyshade,
                )),
                width: 490,
                height: 50,
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.playlist_add,
                        color: Colorconstants.primaryblue,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        "Create New Playlist",
                        style: TextStyle(color: Colorconstants.primaryblue),
                      )
                    ],
                  ),
                )),
            const SizedBox(
              height: 180,
            ),
            const Text(
              "No Playlists Found.",
              style: TextStyle(color: Colors.grey, fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
