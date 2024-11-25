import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mxplayerclone/db.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';
import 'package:mxplayerclone/view/videoscreen/home/emh/excitingmalayalamhits.dart';
import 'package:mxplayerclone/view/videoscreen/home/popularrightnow/prnscreen.dart';
import 'package:mxplayerclone/view/videoscreen/home/youmaylike/youmaylike.dart';

class Mxvdesiscreen extends StatefulWidget {
  const Mxvdesiscreen({super.key});

  @override
  State<Mxvdesiscreen> createState() => _MxvdesiscreenState();
}

class _MxvdesiscreenState extends State<Mxvdesiscreen> {
  final CarouselController carouselController = CarouselController();
  int currentpage = 0;
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
                      6,
                      (index) => Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(Db.vdsicarousel[index]),
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
                                  padding: const EdgeInsets.only(
                                      left: 10, bottom: 10),
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
                      "${currentpage + 1}/6",
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
                    "You May Like",
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
              GridView.builder(
                itemCount: Db.vdesi.length,
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
                            image: AssetImage(Db.vdesi[index]),
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high)),
                  );
                },
              ),
              // session3
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Exciting Malayalam Hits",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const Excitingmalayalamhits(),
                            ));
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ))
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    width: 120,
                    height: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.redAccent,
                        image: DecorationImage(
                            image: AssetImage(Db.emh[0]),
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high)),
                  ),
                  const SizedBox(
                    width: 11,
                  ),
                  Container(
                    width: 120,
                    height: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.redAccent,
                        image: DecorationImage(
                            image: AssetImage(Db.emh[1]),
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high)),
                  ),
                  const SizedBox(
                    width: 11,
                  ),
                  Container(
                    width: 120,
                    height: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.redAccent,
                        image: DecorationImage(
                            image: AssetImage(Db.emh[2]),
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high)),
                  ),
                  const SizedBox(
                    width: 11,
                  ),
                ]),
              ),

              // session4
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular Right Now",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Prnscreen(),
                            ));
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ))
                ],
              ),
              GridView.builder(
                itemCount: 9,
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
                            image: AssetImage(Db.prn[index]),
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high)),
                  );
                },
              ),
            ]))));
  }
}
