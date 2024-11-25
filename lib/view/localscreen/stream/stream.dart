import 'package:flutter/material.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';

class Streamscreen extends StatefulWidget {
  const Streamscreen({super.key});

  @override
  State<Streamscreen> createState() => _StreamscreenState();
}

class _StreamscreenState extends State<Streamscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context, true),
            icon: const Icon(Icons.arrow_back)),
        titleSpacing: 0,
        titleTextStyle: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
        title: const Text("Network Stream"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 220,
            color: Colorconstants.greyshade,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    color: Colorconstants.primarygrey,
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "content://com.samsung.android.content.clipboard/images/553",
                        style: TextStyle(
                            color: Colorconstants.textcolor,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 171,
                        height: 40,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colorconstants.primaryblue),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5))),
                        child: const Center(
                            child: Text(
                          "Download",
                          style: TextStyle(
                              color: Colorconstants.primaryblue, fontSize: 20),
                        )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 171,
                        height: 40,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colorconstants.primaryblue),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5))),
                        child: const Center(
                            child: Text(
                          "Play Now",
                          style: TextStyle(
                              color: Colorconstants.primaryblue, fontSize: 20),
                        )),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "History",
              style: TextStyle(
                  color: Colorconstants.textcolor,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 75,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 47),
            child: Text(
              "You haven't streamed any content.",
              style: TextStyle(color: Colorconstants.primarygrey, fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
