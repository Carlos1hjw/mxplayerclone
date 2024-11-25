import 'package:flutter/material.dart';
import 'package:mxplayerclone/db.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';
import 'package:mxplayerclone/view/localscreen/localvideoplayscreen.dart';

class Tracks extends StatefulWidget {
  const Tracks({super.key});

  @override
  State<Tracks> createState() => _TracksState();
}

class _TracksState extends State<Tracks> {
  List songs = [
    "Srivalli (Malayalam) | Pushpa -..",
    "Theerame (Malayalam) | Mal -..",
    "Naina (Hindi),Amir Khan | Da -..",
    " oh oh oh My Friend | Karthik -..",
    "kiliye (Malayalam) | Ajayante -..",
    "Angu vaana konilu Malayala  -..",
    "Halena | Iru Mugan | Tamil M -..",
    "Hunter varaar Tamil Superhit  -..",
    "Matta | Vijay | Trisha |Greates -..",
    "Fire | Kanguva Song | Surya s -..",
    "Vaa Vathi | Dhanush Tamil M -.."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: songs.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Localvideoplayscreen(),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            image: DecorationImage(
                              image: AssetImage(Db.Songtracks[index]),
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              songs[index],
                              style: const TextStyle(
                                  fontSize: 18,
                                  color: Colorconstants.textcolor),
                            ),
                            const Text(
                              "unknown",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colorconstants.primarygrey),
                            )
                          ]),
                      const SizedBox(
                        width: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Icon(Icons.more_vert),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
