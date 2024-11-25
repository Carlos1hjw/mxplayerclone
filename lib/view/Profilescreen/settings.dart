import 'package:flutter/material.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';
import 'package:mxplayerclone/view/Profilescreen/custompopupplay.dart';
import 'package:mxplayerclone/view/Profilescreen/downloadsettings.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  List iconmgs2 = [
    "assets/images/icondownloadsetting.jpg",
    "assets/images/iconcustompopupplay.jpg",
    "assets/images/kidsmoicon.jpg",
    "assets/images/iconsafemode.jpg",
    "assets/images/iconenabledatasaver.jpg",
    "assets/images/applangicon.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: const Text("Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              color: Colorconstants.primarywhite,
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        color: Colorconstants.primarywhite,
                        child: Image.asset(
                          iconmgs2[0],
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Download Settings",
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        width: 95,
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const Downloadsettings(),
                                ));
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            size: 10,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 23,
                        width: 23,
                        color: Colorconstants.primarywhite,
                        child: Image.asset(
                          iconmgs2[1],
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Custom Pop-Up Play",
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Custompopupplay(),
                                ));
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            size: 10,
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 23,
                        width: 23,
                        color: Colorconstants.primarywhite,
                        child: Image.asset(
                          iconmgs2[2],
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(top: 15, left: 0, right: 5),
                            child: Text(
                              "Kids Mode",
                              style: TextStyle(fontSize: 19),
                            ),
                          ),
                          Text(
                            "Enable content for users under 12 by",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colorconstants.primarygrey),
                          ),
                          Text(
                            "turning it on",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colorconstants.primarygrey),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.toggle_off_outlined))
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        color: Colorconstants.primarywhite,
                        child: Image.asset(
                          iconmgs2[3],
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 18),
                            child: Text(
                              "Safe Content Mode",
                              style: TextStyle(fontSize: 19),
                            ),
                          ),
                          Text(
                            "Restrict minors from viewing",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colorconstants.primarygrey),
                          ),
                          Text(
                            "inappropriate content by turning it on",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colorconstants.primarygrey),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.toggle_off_outlined))
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 22,
                        width: 22,
                        color: Colorconstants.primarywhite,
                        child: Image.asset(
                          iconmgs2[4],
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 18),
                            child: Text(
                              "Enable Data Saver",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Text(
                            "Optimises Auto selection in Online Videos",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colorconstants.primarygrey),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 0,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.toggle_off_outlined))
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: double.infinity,
                color: Colorconstants.primarywhite,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(children: [
                    Container(
                      height: 20,
                      width: 20,
                      color: Colorconstants.primarywhite,
                      child: Image.asset(
                        iconmgs2[5],
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      "App Language",
                      style: TextStyle(fontSize: 20),
                    )
                  ]),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
