import 'package:flutter/material.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';
import 'package:mxplayerclone/utils/imageconstant.dart';

class Notificationscreen extends StatefulWidget {
  const Notificationscreen({super.key});

  @override
  State<Notificationscreen> createState() => _NotificationscreenState();
}

class _NotificationscreenState extends State<Notificationscreen> {
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
                  "You haven't got any messages",
                  style: TextStyle(
                    color: Colorconstants.primarygrey,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "yet.",
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
