import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';
import 'package:mxplayerclone/view/Profilescreen/Notificationscreen.dart';
import 'package:mxplayerclone/view/Profilescreen/latestonmx.dart';
import 'package:mxplayerclone/view/Profilescreen/mxsocial.dart';

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        animationDuration: const Duration(milliseconds: 100),
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () => Navigator.pop(context, true),
              icon: const Icon(Icons.arrow_back),
            ),
            titleSpacing: 0,
            title: Text(
              "Updates",
              style:
                  GoogleFonts.roboto(fontWeight: FontWeight.w900, fontSize: 25),
            ),
            bottom: TabBar(
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: const Color(0xff000000),
              labelStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: Colorconstants.primaryblue),
              unselectedLabelColor: Colorconstants.textcolor,
              unselectedLabelStyle:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              dividerColor: Colors.transparent,
              dividerHeight: 6,
              tabs: [
                const Tab(
                  child: Text(
                    "Notifications",
                  ),
                ),
                const Tab(
                  child: Text("Latest on Mx"),
                ),
                Tab(
                  child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20),
                            ),
                          ),
                          builder: (BuildContext context) {
                            return Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                          onPressed: () =>
                                              Navigator.pop(context, true),
                                          icon: const Icon(Icons.close))
                                    ],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  const Text(
                                    "Login to MX Player",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color:
                                                      Colorconstants.greyshade),
                                              color:
                                                  Colorconstants.primarywhite),
                                          height: 50,
                                          width: 225,
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Row(
                                              children: [
                                                Flag(Flags.india),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                const Text(
                                                  "+91",
                                                  style: TextStyle(
                                                      color: Colorconstants
                                                          .textcolor),
                                                ),
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                const Text(
                                                  "Phone number",
                                                  style: TextStyle(
                                                      color: Colorconstants
                                                          .primarygrey),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          color: Colors.grey,
                                          child: const Padding(
                                            padding: EdgeInsets.all(15.0),
                                            child: Center(
                                              child: Text(
                                                "Get OTP",
                                                style: TextStyle(
                                                    color: Colorconstants
                                                        .primarygrey,
                                                    fontSize: 15),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  const Text(
                                    "Login faster with 1-tap methods",
                                    style: TextStyle(
                                        color: Colorconstants.primarygrey),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Container(
                                        width: 175,
                                        height: 40,
                                        color: Colorconstants.primarywhite,
                                        child: const Center(
                                            child: Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(Bootstrap.google),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                "Google",
                                                style: TextStyle(
                                                    color: Colorconstants
                                                        .textcolor,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        )),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: 175,
                                        height: 40,
                                        color: Colorconstants.primarywhite,
                                        child: const Center(
                                            child: Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(Bootstrap.facebook),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                "Facebook",
                                                style: TextStyle(
                                                    color: Colorconstants
                                                        .textcolor,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        )),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Terms & Privacy",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colorconstants.primarygrey),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: const Material(
                          child: Text(
                        "Mx Social",
                        style: TextStyle(fontSize: 20),
                      ))),
                ),
              ],
            ),
          ),
          body: const TabBarView(
              children: [Notificationscreen(), Latestonmx(), Mxsocial()]),
        ));
  }
}
