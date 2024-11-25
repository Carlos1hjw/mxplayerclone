import 'package:flutter/material.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';
import 'package:mxplayerclone/utils/imageconstant.dart';

class Localvideoplayscreen extends StatefulWidget {
  const Localvideoplayscreen({super.key});

  @override
  State<Localvideoplayscreen> createState() => _LocalvideoplayscreenState();
}

class _LocalvideoplayscreenState extends State<Localvideoplayscreen> {
  List vdeoimgs = [
    "assets/images/vdeoimg.jpg",
    "assets/images/vdeoimg2.jpg",
    "assets/images/vdeoimg3.jpg",
    "assets/images/vdeoimg4.jpg",
    "assets/images/vdeoimg5.jpg",
    "assets/images/vdeoimg6.jpg",
    "assets/images/vdeoimg7.jpg",
    "assets/images/vdeoimg8.jpg",
    "assets/images/vdeoimg9.jpg",
    "assets/images/vdeoimg10.jpg",
    "assets/images/vdeoimg11.jpg",
    "assets/images/vdeoimg12.jpg",
    "assets/images/vdeoimg13.jpg",
    "assets/images/vdeoimg14.jpg",
    "assets/images/vdeoimg15.jpg",
  ];
  List vdeonms = [
    "20240220_135631",
    "20240220_002924",
    "20240220_002711",
    "20240220_002543",
    "20240220_003804",
    "20240220_004371",
    "20240220_009543",
    "20240220_002450",
    "20240220_003824",
    "20240220_004311",
    "20240220_009043",
    "20240220_002454",
    "20240220_002620",
    "20240220_002603",
  ];
  List vdeotime = [
    "01:01",
    "02:01",
    "10:01",
    "05:01",
    "00:51",
    "01:33",
    "00:33",
    "20:01",
    "11:00",
    "01:00",
    "00:20",
    "02:45",
    "04:17",
    "07:21",
    "03:00",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(90)),
        onPressed: () {
          setState(() {});
        },
        child:
            InkWell(onTap: () {}, child: Image.asset(Imageconstants.applogo)),
      ),
      appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.pop(context, true),
              icon: const Icon(Icons.arrow_back)),
          backgroundColor: Colorconstants.primarywhite,
          title: const Padding(
            padding: EdgeInsets.all(2.0),
            child: Text(
              "Camera",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colorconstants.textcolor),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                Icons.search,
                color: Colorconstants.textcolor,
                size: 31,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                Icons.bento,
                color: Colorconstants.textcolor,
                size: 31,
              ),
            ),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 12,
                itemBuilder: (context, index) => Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        vdeoimgs[index],
                                      ),
                                      fit: BoxFit.cover),
                                  color: Colorconstants.primarywhite,
                                ),
                                height: 60,
                                width: 90,
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      color: Colorconstants.textcolor,
                                      child: Text(
                                        vdeotime[index],
                                        style: const TextStyle(
                                            color: Colorconstants.primarywhite,
                                            fontSize: 10),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            vdeonms[index],
                            style: const TextStyle(
                                fontSize: 18, color: Colorconstants.textcolor),
                          ),
                          const SizedBox(
                            width: 74,
                          ),
                          InkWell(
                              onTap: () {}, child: const Icon(Icons.more_vert))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
