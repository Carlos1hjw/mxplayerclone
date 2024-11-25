import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';
import 'package:mxplayerclone/view/Profilescreen/febaccounts.dart';
import 'package:mxplayerclone/view/Profilescreen/feblocalvideoplayer.dart';
import 'package:mxplayerclone/view/Profilescreen/febmusicplayer.dart';
import 'package:mxplayerclone/view/Profilescreen/febmxgames.dart';
import 'package:mxplayerclone/view/Profilescreen/febmxshare.dart';
import 'package:mxplayerclone/view/Profilescreen/febonlinevideos.dart';
import 'package:mxplayerclone/view/Profilescreen/febotherqueries.dart';

class Feedbackscreen extends StatefulWidget {
  const Feedbackscreen({super.key});

  @override
  State<Feedbackscreen> createState() => _FeedbackscreenState();
}

class _FeedbackscreenState extends State<Feedbackscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context, true),
          icon: const Icon(Icons.arrow_back),
        ),
        titleSpacing: 0,
        title: Text(
          "Feedback",
          style: GoogleFonts.roboto(fontWeight: FontWeight.w900, fontSize: 25),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.feedback_outlined),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colorconstants.greyshade,
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Note: Please Check ",
                        style: TextStyle(
                            color: Colorconstants.primarygrey,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      ),
                      Text(
                        "FAQ ",
                        style: TextStyle(
                            color: Colorconstants.primaryblue,
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                      Text(
                        "and ",
                        style: TextStyle(
                            color: Colorconstants.primarygrey,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      ),
                      Text(
                        "Forum ",
                        style: TextStyle(
                            color: Colorconstants.primaryblue,
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                      Text(
                        "before",
                        style: TextStyle(
                            color: Colorconstants.primarygrey,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      ),
                    ],
                  ),
                  Text(
                    "submitting a bug report.",
                    style: TextStyle(
                        color: Colorconstants.primarygrey, fontSize: 15),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "What is your problem regarding ?",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Feblocalvideoplayer(),
                        ));
                  },
                  child: const SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Local Video Player",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colorconstants.primarygrey),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                              color: Colorconstants.primarygrey,
                            )
                          ],
                        ),
                      ))),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Febmxshare(),
                        ));
                  },
                  child: const SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "MX Share",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colorconstants.primarygrey),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                              color: Colorconstants.primarygrey,
                            )
                          ],
                        ),
                      ))),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Febonlinevideos(),
                        ));
                  },
                  child: const SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Online Videos",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colorconstants.primarygrey),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                              color: Colorconstants.primarygrey,
                            )
                          ],
                        ),
                      ))),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Febmxgames(),
                        ));
                  },
                  child: const SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "MX Games",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colorconstants.primarygrey),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                              color: Colorconstants.primarygrey,
                            )
                          ],
                        ),
                      ))),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Febmusicplayer(),
                        ));
                  },
                  child: const SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Music Player",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colorconstants.primarygrey),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                              color: Colorconstants.primarygrey,
                            )
                          ],
                        ),
                      ))),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Febaccounts(),
                        ));
                  },
                  child: const SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Account/Login related Queries",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colorconstants.primarygrey),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                              color: Colorconstants.primarygrey,
                            )
                          ],
                        ),
                      ))),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Febotherqueries(),
                        ));
                  },
                  child: const SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Other Queries",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colorconstants.primarygrey),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                              color: Colorconstants.primarygrey,
                            )
                          ],
                        ),
                      )))
            ],
          ),
        ],
      ),
    );
  }
}
