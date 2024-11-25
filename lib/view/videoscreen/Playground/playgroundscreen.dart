import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mxplayerclone/db.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';
import 'package:mxplayerclone/view/videoscreen/home/youmaylike/youmaylike.dart';

class Playgroundscreen extends StatefulWidget {
  const Playgroundscreen({super.key});

  @override
  State<Playgroundscreen> createState() => _PlaygroundscreenState();
}

class _PlaygroundscreenState extends State<Playgroundscreen> {
  final CarouselController carouselController = CarouselController();
  int currentpage = 0;
  List text1 = [
    "Ep 110, 25 Oct",
    "Ep 111, 26 Oct",
    "Ep 112, 27 Oct",
    "Ep 113, 28 Oct",
    "Ep 114, 29 Oct",
    "Ep 115, 30 Oct",
    "Ep 116, 31 Oct",
    "Ep 117, 01 Nov",
    "Ep 118, 02 Nov",
    "Ep 119, 03 Nov",
    "Ep 120, 04 Nov",
    "Ep 121, 05 Nov",
    "Ep 122, 06 Nov",
    "Ep 123, 07 Nov",
    "Ep 124, 08 Nov",
    "Ep 125, 09 Nov",
    "Ep 126, 10 Nov",
  ];

  List text2 = [
    "Ep 10, 25 June",
    "Ep 11, 26 June",
    "Ep 12, 27 June",
    "Ep 13, 28 June",
    "Ep 14, 29 June",
    "Ep 15, 30 June",
    "Ep 16, 31 June",
    "Ep 17, 01 July",
    "Ep 18, 02 July",
    "Ep 19, 03 July",
    "Ep 20, 04 July",
    "Ep 21, 05 July",
    "Ep 22, 06 July",
    "Ep 23, 07 July",
    "Ep 24, 08 July",
    "Ep 25, 09 July",
    "Ep 26, 10 July",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: [
                //  session 1
                CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentpage = index;
                      });
                    },
                  ),
                  items: List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(Db.pgcarousel[index]),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              left: 0,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, bottom: 10),
                                child: CircleAvatar(
                                  backgroundColor: Colorconstants.textcolor,
                                  maxRadius: 20,
                                  child: IconButton(
                                    iconSize: 20,
                                    color: Colors.black,
                                    onPressed: () {},
                                    icon: const Icon(Icons.add,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 10,
                  right: 10,
                  child: Text(
                    "${currentpage + 1}/3",
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Daily Episodes",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Youmaylike(),
                          ));
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ))
              ],
            ),

            SizedBox(
              height: 195,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 230,
                              height: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colorconstants.primarywhite,
                                  image: DecorationImage(
                                      image: AssetImage(Db.playground[index]),
                                      fit: BoxFit.cover,
                                      filterQuality: FilterQuality.high))),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            text1[index],
                            style: const TextStyle(),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // session2

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Daily Episodes",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Youmaylike(),
                          ));
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ))
              ],
            ),

            SizedBox(
              height: 195,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 230,
                              height: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colorconstants.primarywhite,
                                  image: DecorationImage(
                                      image: AssetImage(Db.Playground2[index]),
                                      fit: BoxFit.cover,
                                      filterQuality: FilterQuality.high))),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            text2[index],
                            style: const TextStyle(),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
                        // Column(
                        //   children: [
                        //     Container(
                        //         width: 230,
                        //         height: 150,
                        //         decoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(5),
                        //             color: Colors.redAccent,
                        //             image: DecorationImage(
                        //                 image:
                        //                     AssetImage(Db.playground[index]),
                        //                 fit: BoxFit.cover,
                        //                 filterQuality: FilterQuality.high))),
                        //     SizedBox(
                        //       height: 5,
                        //     ),
                        //     Text(
                        //       text1[index],
                        //       style: TextStyle(),
                        //     )
                        //   ],
                        // ),
  

                //  SingleChildScrollView(scrollDirection: Axis.horizontal,
                //   //  Flexible(
                //      child: ListView.builder(scrollDirection: Axis.horizontal,
                //       shrinkWrap: true,physics: const NeverScrollableScrollPhysics(),
                //                itemCount: 15,
                //                itemBuilder: (context, index) => Row(
                //       children: [Container(width: 230,height: 180,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.redAccent
                //                         ,image: DecorationImage(image: AssetImage(Db.playground[index]),fit: BoxFit.cover,filterQuality: FilterQuality.high)
                //                         ),),
                //            ] )),
                //   //  ),
                //  ),
