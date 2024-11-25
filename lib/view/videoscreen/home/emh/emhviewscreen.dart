import 'package:flutter/material.dart';
import 'package:mxplayerclone/db.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';

class Emhviewscreen extends StatefulWidget {
  const Emhviewscreen({super.key});

  @override
  State<Emhviewscreen> createState() => _EmhviewscreenState();
}

class _EmhviewscreenState extends State<Emhviewscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 250,
            width: double.infinity,
            child: Image(
              image: AssetImage("assets/images/hackernewtr.webp"),
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hacker (Malayalam Dubbed)",
                      style: TextStyle(fontSize: 20),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Icon(Icons.arrow_drop_down_rounded),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [const Text("Malayalam,Action,2017"), Container()],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.play_arrow,
                          color: Colorconstants.primarygrey,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Trailer")
                      ],
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colorconstants.primarygrey,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("My List")
                      ],
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.download_outlined,
                          color: Colorconstants.primarygrey,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Downloads")
                      ],
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colorconstants.primarygrey,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Share")
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "RECOMMENDED",
                  style: TextStyle(
                      color: Colorconstants.textcolor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                GridView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 11,
                    mainAxisSpacing: 15,
                    childAspectRatio: .7,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 35,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.redAccent,
                          image: DecorationImage(
                              image: AssetImage(Db.recommended[index]),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
