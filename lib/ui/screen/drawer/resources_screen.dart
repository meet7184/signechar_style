import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:signature_stayle/ui/screen/drawer/resources_screen.dart';
import 'package:signature_stayle/ui/screen/drawer/speaking_screen.dart';
import 'package:signature_stayle/ui/screen/drawer/style_screen.dart';

import '../../../const/app_icon.dart';
import '../../../widget/app_bar.dart';
import 'contact_screen.dart';

class ReSourcesScreen extends StatefulWidget {
  static const String routeName = '/reSourcesScreen';
  const ReSourcesScreen({Key? key}) : super(key: key);

  @override
  State<ReSourcesScreen> createState() => _ReSourcesScreenState();
}

class _ReSourcesScreenState extends State<ReSourcesScreen> {
  // List<String> list = [
  //   "SERVICES",
  //   "MEET NATALIE",
  //   "RESOURCES",
  //   "SPEAKING",
  //   "CONTACT",
  //   "STYLE NOTES"
  // ];
  // int selectIndex = 0;
  // final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //key: _scaffoldKey,
      //drawer: drawer(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child:
                  Image.asset(AppAssets.onlineEsourcesImage, fit: BoxFit.cover),
            ),
            SizedBox(height: 20),
            Text(
              "Exclusive Style",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "The tools, expertise, and resources I use with clients - out of my head and on to your screen.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
              ),
            ),
            SizedBox(height: 20),
            containerBox(AppAssets.rectangle3Image, "ONLINE WORKSHOP",
                "Ready for a style refresh? Ready to do it with intention and in the most efficient way possible? That will save you money in the long run, create a wardrobe you love, and keep you from making the same mistakesyou’ve made in the past?\n  Learn what works BEST for you, how to edit to only the BEST in your closet, shop for the BEST pieces for you and the moment, and create new looks that flatter and bring out your stylish BEST. \n   Click the link below to see what’s included and how you can discover your Signature Best."),
            container("Get Started"),
            SizedBox(height: 20),
            containerBox(
              AppAssets.rectangle4Image,
              "MINI COURSE",
              "Though we are distanced, faces are more up close and personal and we have the opportunity to understand more of how our message is being received like never before.",
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    "Bulleted list here please:",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
                SizedBox(height: 10),
                textDescription(
                    "Easily-applicable tips for looking your signature best on videoconferencing meetings,"),
                textDescription("The best way to build trust, even virtually,"),
                textDescription(
                    "A crash course on how to read facial expressions, and"),
                textDescription(
                    "Recommendations on what to do with the information you observe."),
              ],
            ),
            SizedBox(height: 20),
            container("Get Started"),
            SizedBox(height: 20),
            containerBox(AppAssets.rectangle1Image, "SWIMSUIT STYLE GUIDE",
                "For the last three years, my swimsuit style guide has been the most downloaded client resource and this year I took it to the next level. 56-pages with more than 125 suits to show you exact what to do and not to do to minimize that, maximize that, and look stylish and put together in the process. \n It’s all here. I’ve poured over more than 4,000 suits to bring you the best. I have done ALL. THE. WORK. for you! You’re going to love it. \n Cheers to never crying in the swimsuit dressing room again."),
            container("Swimsuit Nirvana Unlocked"),
            SizedBox(height: 20),
            SizedBox(height: 20),
            containerBox(AppAssets.rectangle2Image, "SHOP MY LOOKS",
                "Whether its what I’m wearing now, how I’m remixing pieces in my closet, or clothes I just snagged for a client, take a look at the pieces I’m actually using and engaged with (not just a round up of what’s available on the Internet! ;-))"),
            container("Shop Now"),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              color: Color(0xff003057),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Image.asset(AppAssets.signatureImage, height: 100),
                  SizedBox(height: 20),
                  Text(
                    "© Copyright 2023 Signature Style. All Rights Reserved.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: Colors.white),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget containerBox(String image, String name, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(image, fit: BoxFit.cover)),
          ),
          SizedBox(height: 20),
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget container(String text) {
    return Container(
      height: 45,
      width: 280,
      decoration: BoxDecoration(
        color: Color(0xff003057),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 4),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }

  Widget textDescription(String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 7),
            child: CircleAvatar(radius: 3, backgroundColor: Colors.black),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              description,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }

  // Widget? drawer() {
  //   return Container(
  //     width: 260,
  //     decoration: BoxDecoration(
  //         color: Color(0xff1AA6BF),
  //         borderRadius: BorderRadius.only(
  //             bottomRight: Radius.circular(35), topRight: Radius.circular(35))),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         SizedBox(height: 50),
  //         Padding(
  //           padding: const EdgeInsets.all(8.0),
  //           child: Image.asset(AppAssets.backButtonImage, height: 30),
  //         ),
  //         SizedBox(height: 10),
  //         ...list
  //             .asMap()
  //             .map((index, value) => MapEntry(
  //                 index,
  //                 Column(
  //                   children: [
  //                     GestureDetector(
  //                       onTap: () {
  //                         if (index == 2) {
  //                           Get.toNamed(ReSourcesScreen.routeName);
  //                         }
  //                         if (index == 3) {
  //                           Get.toNamed(SpeakingScreen.routeName);
  //                         }
  //                         if (index == 4) {
  //                           Get.toNamed(ContactScreen.routeName);
  //                         }
  //                         if (index == 5) {
  //                           Get.toNamed(StyleScreen.routeName);
  //                         }
  //                       },
  //                       child: Container(
  //                         height: 30,
  //                         width: double.infinity,
  //                         color: Colors.transparent,
  //                         margin: EdgeInsets.only(bottom: 5, top: 5),
  //                         child: Padding(
  //                           padding: const EdgeInsets.only(left: 20),
  //                           child: Text(
  //                             value,
  //                             style: TextStyle(
  //                                 fontSize: 20,
  //                                 fontWeight: FontWeight.w400,
  //                                 color: Colors.white),
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                     Divider(thickness: 1.5, color: Colors.white),
  //                   ],
  //                 )))
  //             .values
  //             .toList(),
  //       ],
  //     ),
  //   );
  // }
}
