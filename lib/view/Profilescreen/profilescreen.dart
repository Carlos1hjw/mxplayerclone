import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';
import 'package:mxplayerclone/view/Profilescreen/apptheme.dart';
import 'package:mxplayerclone/view/Profilescreen/helpscreen.dart';
import 'package:mxplayerclone/view/Profilescreen/legalscreen.dart';
import 'package:mxplayerclone/view/Profilescreen/mylist.dart';
import 'package:mxplayerclone/view/Profilescreen/downloads.dart';
import 'package:mxplayerclone/view/Profilescreen/mypreferences.dart';
import 'package:mxplayerclone/view/Profilescreen/settings.dart';
import 'package:mxplayerclone/view/Profilescreen/updates.dart';
import 'package:mxplayerclone/view/Profilescreen/watchhistory.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  List iconmgs = [
    "assets/images/Bookmarkplaybtn.jpg",
    "assets/images/Screenshot_20241119-114355_MX Player.jpg",
    "assets/images/Settings9conMX Player.jpg",
    "assets/images/Screenshot_20241119-114350_MX Player.jpg",
    "assets/images/Screenshot_20241119-114340_MX Player.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 225, 239, 240),
        leading: IconButton(
          onPressed: () => Navigator.pop(context, true),
          icon: const Icon(Icons.arrow_back),
        ),
        titleSpacing: 5,
        titleTextStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        title: const Text("My Account"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Updates(),
                      ));
                },
                child: const Icon(Icons.notifications_none)),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                setState(() {});
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
                                  onPressed: () => Navigator.pop(context, true),
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
                            "Login to Me Page",
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
                                          color: Colorconstants.greyshade),
                                      color: Colorconstants.primarywhite),
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
                                              color: Colorconstants.textcolor),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        const Text(
                                          "Phone number",
                                          style: TextStyle(
                                              color:
                                                  Colorconstants.primarygrey),
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
                                            color: Colorconstants.primarygrey,
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
                            style: TextStyle(color: Colorconstants.primarygrey),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Bootstrap.google),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Google",
                                        style: TextStyle(
                                            color: Colorconstants.textcolor,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Bootstrap.facebook),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Facebook",
                                        style: TextStyle(
                                            color: Colorconstants.textcolor,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
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
                color: Colorconstants.primarywhite,
                child: SizedBox(
                  width: double.infinity,
                  height: 90,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Color.fromARGB(255, 186, 210, 235),
                          child: Icon(
                            Icons.person_4_rounded,
                            color: Colorconstants.greywhite,
                          ),
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colorconstants.textcolor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            //  session 2
            Container(
              width: double.infinity,
              color: Colorconstants.primarywhite,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {});
                      },
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Mylist(),
                              ));
                        },
                        child: const Column(
                          children: [
                            Icon(
                              Icons.add,
                              color: Colorconstants.primaryblue,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "My List",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {});
                      },
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Downloads(),
                              ));
                        },
                        child: const Column(
                          children: [
                            Icon(
                              Icons.download_outlined,
                              color: Colorconstants.primaryblue,
                            ),
                            SizedBox(height: 5),
                            Text("Downloads", style: TextStyle(fontSize: 12))
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Watchhistory(),
                              ));
                        });
                      },
                      child: const Column(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Colorconstants.primaryblue,
                          ),
                          SizedBox(height: 5),
                          Text("Watch History", style: TextStyle(fontSize: 12))
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(
                          () {
                            showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20),
                                ),
                              ),
                              builder: (BuildContext context) {
                                return Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          IconButton(
                                              onPressed: () =>
                                                  Navigator.pop(context, true),
                                              icon: const Icon(Icons.close))
                                        ],
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 10),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      const Text(
                                        "Login to Continue Watching",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const Text(
                                        "Login to your MX Player account to enter the code shown on your TV",
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w400,
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
                                                      color: Colorconstants
                                                          .greyshade),
                                                  color: Colorconstants
                                                      .primarywhite),
                                              height: 50,
                                              width: 225,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "Terms & Privacy",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color:
                                                    Colorconstants.primarygrey),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                      child: const Column(
                        children: [
                          Icon(
                            Icons.live_tv,
                            color: Colorconstants.primaryblue,
                          ),
                          SizedBox(height: 5),
                          Text("Activate Tv", style: TextStyle(fontSize: 12))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),

            // session 3
            Container(
                width: double.infinity,
                color: Colorconstants.primarywhite,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 35,
                            width: 35,
                            color: Colorconstants.primarywhite,
                            child: Image.asset(
                              iconmgs[0],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Text("Make Videos Default"),
                            ),
                            Text(
                              "open videos section on app launcher",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colorconstants.primarygrey),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 88,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.toggle_off_outlined))
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Apptheme(),
                            ));
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            color: Colorconstants.primarywhite,
                            child: Image.asset(
                              iconmgs[1],
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Text("App Theme"),
                          const SizedBox(
                            width: 194,
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Apptheme(),
                                    ));
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                size: 10,
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Settings(),
                            ));
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            color: Colorconstants.primarywhite,
                            child: Image.asset(
                              iconmgs[2],
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          const Text("Settings"),
                          const SizedBox(
                            width: 214,
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Settings(),
                                    ));
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                size: 10,
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Mypreferences(),
                            ));
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            color: Colorconstants.primarywhite,
                            child: Image.asset(
                              iconmgs[3],
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          const Text("My Preferences"),
                          const SizedBox(
                            width: 163,
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const Mypreferences(),
                                    ));
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                size: 10,
                              ))
                        ],
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 10,
            ),

            Container(
              width: double.infinity,
              color: Colorconstants.primarywhite,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Legalscreen(),
                          ));
                    },
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          color: Colorconstants.primarywhite,
                          child: Image.asset(
                            iconmgs[4],
                            fit: BoxFit.fill,
                          ),
                        ),
                        const Text("Legal"),
                        const SizedBox(
                          width: 229,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Legalscreen(),
                                  ));
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 10,
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Helpscreen(),
                          ));
                    },
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Icon(Icons.help_rounded),
                        ),
                        const SizedBox(width: 15),
                        const Text("Help"),
                        const SizedBox(
                          width: 235,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Helpscreen(),
                                  ));
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 10,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
