import 'package:flutter/material.dart';
import 'package:mxplayerclone/db.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';
import 'package:mxplayerclone/view/Profilescreen/downloads.dart';
import 'package:mxplayerclone/view/videoscreen/home/emh/emhviewscreen.dart';
import 'package:mxplayerclone/view/videoscreen/home/youmaylike/youmaylike.dart';

class MycornerScreen extends StatefulWidget {
  const MycornerScreen({super.key});

  @override
  State<MycornerScreen> createState() => _MycornerScreenState();
}

class _MycornerScreenState extends State<MycornerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Downloads",
                style: TextStyle(
                    color: Colorconstants.textcolor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(children: [
                Container(
                    height: 80,
                    color: Colorconstants.greyblue,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                              color: Colorconstants.whiteblue,
                              child: Image.asset(
                                "assets/images/MXclcorner.jpg",
                                fit: BoxFit.cover,
                              )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Download videos to watch",
                              style: TextStyle(
                                  color: Colorconstants.primarygrey,
                                  fontSize: 15),
                              maxLines: 2,
                            ),
                            Text(
                              "offline.",
                              style: TextStyle(
                                  color: Colorconstants.primarygrey,
                                  fontSize: 15),
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ],
                    )),
                Positioned(
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colorconstants.primaryblue,
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Downloads(),
                                  ));
                            },
                            child: const Icon(
                              Icons.download_sharp,
                              color: Colorconstants.primarywhite,
                            )),
                      ),
                    ))
              ]),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Continue Watching",
                style: TextStyle(
                    color: Colorconstants.textcolor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(children: [
                Container(
                    height: 70,
                    color: Colorconstants.greyblue,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                              color: Colorconstants.whiteblue,
                              child: Image.asset(
                                "assets/images/MXclcorner.jpg",
                                fit: BoxFit.cover,
                              )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Continue with the videos",
                              style: TextStyle(
                                  color: Colorconstants.primarygrey,
                                  fontSize: 15),
                              maxLines: 2,
                            ),
                            Text(
                              "from where you last left off.",
                              style: TextStyle(
                                  color: Colorconstants.primarygrey,
                                  fontSize: 15),
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ],
                    )),
                const Positioned(
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colorconstants.primaryblue,
                        child: Icon(
                          Icons.play_circle_outline_rounded,
                          color: Colorconstants.primarywhite,
                        ),
                      ),
                    ))
              ]),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "My List",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Youmaylike(),
                            ));
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ))
                ],
              ),
              SizedBox(
                height: 195,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(children: [
                        Container(
                            width: 130,
                            height: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colorconstants.primarywhite,
                                image: DecorationImage(
                                    image: AssetImage(Db.Mylist[index]),
                                    fit: BoxFit.cover,
                                    filterQuality: FilterQuality.high))),
                      ])),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Top Performing Shows",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Youmaylike(),
                            ));
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ))
                ],
              ),
              GridView.builder(
                itemCount: 9,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 11,
                  mainAxisSpacing: 15,
                  childAspectRatio: .7,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Emhviewscreen(),
                          ));
                    },
                    child: Container(
                      width: 30,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colorconstants.primarywhite,
                          image: DecorationImage(
                              image: AssetImage(Db.shows[index]),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
