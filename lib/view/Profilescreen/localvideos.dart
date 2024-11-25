import 'package:flutter/material.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';
import 'package:mxplayerclone/utils/imageconstant.dart';

class Localvideos extends StatefulWidget {
  const Localvideos({super.key});

  @override
  State<Localvideos> createState() => _LocalvideosState();
}

class _LocalvideosState extends State<Localvideos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage(Imageconstants.Circleavatarchild),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "You haven't downloaded ",
                  style: TextStyle(
                    color: Colorconstants.primarygrey,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  "any videos yet.",
                  style: TextStyle(
                    color: Colorconstants.primarygrey,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 170,
                    color: Colorconstants.primaryblue,
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.download_outlined,
                            color: Colorconstants.primarywhite,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Go to Download",
                            style:
                                TextStyle(color: Colorconstants.primarywhite),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
