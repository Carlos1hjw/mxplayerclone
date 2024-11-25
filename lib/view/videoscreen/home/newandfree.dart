import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mxplayerclone/db.dart';
import 'package:mxplayerclone/utils/colorconstance.dart';
import 'package:mxplayerclone/view/videoscreen/home/emh/emhviewscreen.dart';
import 'package:mxplayerclone/view/videoscreen/home/youmaylike/youmaylike.dart';

class Newandfree extends StatefulWidget {
  const Newandfree({super.key});

  @override
  State<Newandfree> createState() => _NewandfreeState();
}

class _NewandfreeState extends State<Newandfree> {
  final CarouselController carouselController = CarouselController();
  int currentPage = 0;
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
        title: const Text("New & Free"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
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
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentPage = index;
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
                          image: AssetImage(Db.newandfree[index]),
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
                  "${currentPage + 1}/6",
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
// session3
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
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Emhviewscreen(),
                      ));
                },
                child: Container(
                  width: 30,
                  height: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colorconstants.primarywhite,
                      image: DecorationImage(
                          image: AssetImage(Db.hymlimages[index]),
                          fit: BoxFit.cover,
                          filterQuality: FilterQuality.high)),
                ),
              );
            },
          ),
        ],
      )),
    );
  }
}
