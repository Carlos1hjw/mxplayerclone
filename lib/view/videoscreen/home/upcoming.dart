import 'package:flutter/material.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';

class Upcoming extends StatefulWidget {
  const Upcoming({super.key});

  @override
  State<Upcoming> createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
  List namesoflt = ["My Star Bride", "Emergency Couple", "High Class"];
  List dates = ["28 Nov", "5 Dec", "12 Dec"];
  List latestimg = [
    "assets/images/updatelatest1.jpg",
    "assets/images/updatelatest2.jpg",
    "assets/images/updatelatest3.jpg"
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
        title: const Text("New & Hot"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/Calendariconr.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          dates[index],
                          style: const TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colorconstants.primarywhite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: double.infinity,
                              child: Image.asset(
                                latestimg[index],
                                fit: BoxFit.cover,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            namesoflt[index],
                            style: const TextStyle(fontSize: 20),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 30,
                            width: 115,
                            decoration: const BoxDecoration(
                                color: Colorconstants.primaryblue),
                            child: const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: Icon(
                                    Icons.notifications,
                                    color: Colorconstants.primarywhite,
                                    size: 17,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Remind me",
                                  style: TextStyle(
                                      color: Colorconstants.primarywhite),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 2,
                            width: double.infinity,
                            color: Colorconstants.primarygrey,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Language: Hindi",
                                style: TextStyle(fontSize: 17),
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: const Icon(Icons.arrow_drop_down))
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
