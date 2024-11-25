import 'package:flutter/material.dart';

class Playlists extends StatefulWidget {
  const Playlists({super.key});

  @override
  State<Playlists> createState() => _PlaylistsState();
}

class _PlaylistsState extends State<Playlists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 399,
        height: 920,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Playlistayer.jpg"),
                fit: BoxFit.fill)),
      ),
    );
  }
}
