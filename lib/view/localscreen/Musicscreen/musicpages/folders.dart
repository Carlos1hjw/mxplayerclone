import 'package:flutter/material.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';
import 'package:mxplayerclone/view/localscreen/Musicscreen/musicpages/musicplayfolders.dart';

class Folders extends StatefulWidget {
  const Folders({super.key});

  @override
  State<Folders> createState() => _FoldersState();
}

class _FoldersState extends State<Folders> {
  List foldernms = [
    "Alarms",
    "Downloads",
    "Movie songs",
    "Music",
    "Music(1)",
    "Snaptube Audios",
    "Songs",
    "Whatsapp Audios",
  ];
  List cntntnmber = [
    "2 songs",
    "25 songs",
    "35 songs",
    "68 songs",
    "36 Songs",
    "17 songs",
    "105 songs",
    "56 songs"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: TextField(
              controller: TextEditingController(),
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colorconstants.greyshade,
                enabledBorder: OutlineInputBorder(),
                border: OutlineInputBorder(),
                hintText: "Serach Folders...",
                hintStyle:
                    TextStyle(color: Colorconstants.primarygrey, fontSize: 18),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Icon(Icons.search, color: Colorconstants.textcolor),
                  ),
                ),
              ),
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 8,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Musicplayfolders(),
                    ));
              },
              child: Row(
                children: [
                  const Icon(
                    Icons.folder,
                    size: 80,
                    color: Colorconstants.primarygrey,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          foldernms[index],
                          style: const TextStyle(
                              fontSize: 18, color: Colorconstants.textcolor),
                        ),
                        Text(
                          cntntnmber[index],
                          style: const TextStyle(
                              fontSize: 12, color: Colorconstants.primarygrey),
                        )
                      ]),
                  const Spacer(),
                  const Icon(Icons.more_vert)
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
