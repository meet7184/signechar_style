import 'package:flutter/material.dart';

import '../../../const/app_icon.dart';

class ReSourcesScreen extends StatelessWidget {
  static const String routeName = '/reSourcesScreen';
  const ReSourcesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Color(0xff002343),
          actionsIconTheme: IconThemeData(),
          leading: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 10),
                child: GestureDetector(
                    onTap: () {
                      //_scaffoldKey.currentState?.openDrawer();
                    },
                    child: Image.asset(AppAssets.menuImage, height: 30)),
              ),
            ],
          ),
          title:
              Center(child: Image.asset(AppAssets.signatureImage, height: 55)),
        ),
      ),
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
}
