import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mxplayerclone/view/Profilescreen/localvideos.dart';
import 'package:mxplayerclone/view/Profilescreen/ottvideos.dart';
import 'package:mxplayerclone/view/localscreen/privacy/privacy.dart';

class Downloads extends StatefulWidget {
  const Downloads({super.key});

  @override
  State<Downloads> createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
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
              "Downloads",
              style:
                  GoogleFonts.roboto(fontWeight: FontWeight.w900, fontSize: 25),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Privacy(),
                          ));
                    },
                    child: const Icon(
                      Icons.folder_outlined,
                    )),
              ),
            ],
            bottom: const TabBar(
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Color(0xff000000),
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 29,
                  color: Colors.black),
              unselectedLabelStyle:
                  TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
              dividerColor: Colors.transparent,
              dividerHeight: 6,
              tabs: [
                Tab(
                  child: Text(
                    "OTT Videos",
                  ),
                ),
                Tab(
                  child: Text("Local Videos"),
                ),
              ],
            ),
          ),
          body: const TabBarView(children: [Ottvideos(), Localvideos()]),
        ));
  }
}
