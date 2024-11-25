import 'package:flutter/material.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';
import 'package:mxplayerclone/utils/imageconstant.dart';

class Ottvideos extends StatefulWidget {
  const Ottvideos({super.key});

  @override
  State<Ottvideos> createState() => _OttvideosState();
}

class _OttvideosState extends State<Ottvideos> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage(Imageconstants.Circleavatarchild),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "You haven't downloaded any",
                  style: TextStyle(
                    color: Colorconstants.primarygrey,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "videos yet.",
                  style: TextStyle(
                    color: Colorconstants.primarygrey,
                    fontSize: 20,
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
