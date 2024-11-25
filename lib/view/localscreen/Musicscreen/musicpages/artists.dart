import 'package:flutter/material.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';
import 'package:mxplayerclone/view/localscreen/Musicscreen/musicpages/musicplayfolders.dart';

class Artists extends StatefulWidget {
  const Artists({super.key});

  @override
  State<Artists> createState() => _ArtistsState();
}

class _ArtistsState extends State<Artists> {
  List artist = [
    "Aditya Music",
    "Alan Walker",
    "Alka Yagnik",
    "Ananya Music",
    "Anirudh Ravichandar",
    "Anup Rubens",
    "Aravind Srinivas",
    "Asees kaur",
    "Ayangaran",
    "Ayraan"
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
                  enabledBorder: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colorconstants.greyshade,
                  border: OutlineInputBorder(),
                  hintText: "Serach Artists...",
                  hintStyle: TextStyle(
                      color: Colorconstants.primarygrey, fontSize: 18),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Padding(
                      padding: EdgeInsets.all(0.0),
                      child:
                          Icon(Icons.search, color: Colorconstants.textcolor),
                    ),
                  ),
                ),
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Musicplayfolders(),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.greenAccent,
                        child: Text(
                          "A",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 3, 198, 104)),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              artist[index],
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Colorconstants.textcolor),
                            ),
                            const Text(
                              "1 song",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colorconstants.primarygrey),
                            )
                          ]),
                      const Spacer(),
                      const Icon(Icons.more_vert)
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
