import 'package:flutter/material.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';
import 'package:mxplayerclone/utils/imageconstant.dart';

class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(90)),
        onPressed: () {
          setState(() {});
        },
        child: const Icon(
          Icons.add,
          color: Colorconstants.primarywhite,
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context, true),
            icon: const Icon(Icons.arrow_back)),
        titleSpacing: 0,
        titleTextStyle: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
        title: const Text("Private Folder"),
      ),
      body: const SingleChildScrollView(
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
                  "You haven't added any",
                  style: TextStyle(
                    color: Colorconstants.primarygrey,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "files yet.",
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
