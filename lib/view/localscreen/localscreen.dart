import 'package:flutter/material.dart';
import 'package:mxplayerclone/view/localscreen/Musicscreen/musicscreen.dart';
import 'package:mxplayerclone/view/localscreen/cloud/cloudscreen.dart';
import 'package:mxplayerclone/view/localscreen/localvideoplayscreen.dart';
import 'package:mxplayerclone/view/localscreen/playlist/playlistscreen.dart';
import 'package:mxplayerclone/view/localscreen/privacy/privacy.dart';
import 'package:mxplayerclone/view/localscreen/share/sharescreen.dart';
import 'package:mxplayerclone/view/localscreen/stream/stream.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';
import 'package:mxplayerclone/utils/imageconstant.dart';
import 'package:mxplayerclone/view/Profilescreen/profilescreen.dart';

class Localscreen extends StatefulWidget {
  const Localscreen({super.key});

  @override
  State<Localscreen> createState() => _LocalscreenState();
}

class _LocalscreenState extends State<Localscreen> {
  @override
  Widget build(BuildContext context) {
    FloatingActionButton(
      onPressed: () {},
    );

    List logos = [
      Icons.lock,
      Icons.cloud_upload_outlined,
      Icons.playlist_add,
      Icons.music_note_outlined,
      Icons.language,
      Icons.mobile_screen_share
    ];
    List screens = [
      const Privacy(),
      const Cloudscreen(),
      const Playlistscreen(),
      const Musicscreen(),
      const Streamscreen(),
      const Sharescreen()
    ];
    List text = [
      "privacy",
      "cloud drive",
      "playlist",
      "music",
      "stream",
      "share"
    ];
    List folders = [
      "camera",
      "videos",
      "Downloads",
      "Whatsapp Video",
      "camera1",
      "video",
      "Downloader",
      "Whatsapp Documents",
      "Movies",
      "Series",
      "camera2",
      "camera3"
    ];
    List numbers = [
      "50 Videos",
      "36 Videos",
      "100 Videos",
      "140 Videos",
      "55 Videos",
      "26 Videos",
      "10 Videos",
      "40 Videos",
      "140 Videos",
      "55 Videos",
      "26 Videos",
      "10 Videos"
    ];
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(90)),
          onPressed: () {
            setState(() {});
          },
          child: Image.asset(Imageconstants.applogo),
        ),
        appBar: AppBar(
            backgroundColor: Colorconstants.primarywhite,
            title: const Padding(
              padding: EdgeInsets.all(2.0),
              child: Text(
                "Folders",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colorconstants.textcolor),
              ),
            ),
            actions: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.search,
                  color: Colorconstants.textcolor,
                  size: 31,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.bento,
                  color: Colorconstants.textcolor,
                  size: 31,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
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
              )
            ]),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    6,
                    (index) => Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => screens[index],
                                ));

                            setState(() {});
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colorconstants.greyshade),
                              height: 40,
                              width: 50,
                              child: Icon(logos[index])),
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        text[index],
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: Colorconstants.textcolor),
                      )
                    ]),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 12,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Localvideoplayscreen(),
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
                            folders[index],
                            style: const TextStyle(
                                fontSize: 18, color: Colorconstants.textcolor),
                          ),
                          Text(
                            numbers[index],
                            style: const TextStyle(
                                fontSize: 12,
                                color: Colorconstants.primarygrey),
                          )
                        ])
                  ],
                ),
              ),
            )
          ]),
        ));
  }
}
