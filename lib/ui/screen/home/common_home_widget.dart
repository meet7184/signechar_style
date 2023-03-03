import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../const/app_color.dart';
import '../../../const/app_icon.dart';
import '../../../widget/common_text_field.dart';
import 'home_screen.dart';

class CommonHomeWidget extends StatefulWidget {
  const CommonHomeWidget({Key? key}) : super(key: key);

  @override
  State<CommonHomeWidget> createState() => _CommonHomeWidgetState();
}

class _CommonHomeWidgetState extends State<CommonHomeWidget> {
  List<String> selectList = ["Email", "Phone", "Either"];
  int selectIndex = 0;
  List<IconModel> iconList = [
    IconModel(AppAssets.facebookImage, "Facebook"),
    IconModel(AppAssets.instagramImage, "Instagram"),
    IconModel(AppAssets.linkedinImage, "Linkedin"),
    IconModel(AppAssets.pinterestImage, "Pinterest"),
    IconModel(AppAssets.twitterImage, "twitter"),
  ];
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController styleThroughController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            child: Image.asset(AppAssets.bannerImage, fit: BoxFit.cover),
          ),
          SizedBox(height: 20),
          Text(
            "SPEAKING & EVENTS",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Book an engaging, personable and fun speaker who gives practical, real-world application methods to  enhance your audience's personal and corporate style.",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 50,
            width: 170,
            decoration: BoxDecoration(
              color: AppColor.kPrimaryLightBlue,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Book Me",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.white),
                ),
                SizedBox(width: 10),
                Icon(Icons.arrow_forward_sharp, size: 25, color: Colors.white),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 65,
            width: double.infinity,
            child: Image.asset(AppAssets.servicesImage, fit: BoxFit.cover),
          ),
          SizedBox(height: 20),
          containerBoxWidget(
              AppAssets.speakingImage,
              Color(0xff002343),
              "SPEAKING & EVENTS",
              "Invite Natalie to share her expertise on a variety of topics including the importance of personal branding, projecting your signature style, social graces, dressing for success, and making an impact. Her fun, informative, and captivating speaking style is well-received with audiences!",
              "BOOKINGS"),
          SizedBox(height: 20),
          containerBoxWidget(
              AppAssets.natalieWebsiteImage,
              Color(0xffBFD857),
              "STYLE SERVICES",
              "You’ve heard it takes six seconds to make a first impression – what messages are you sending? Through Closet Edits, Personal Shopping, and Lookbook creation Natalie will guide you through stepping out in confidence. Find out how you can best project yourself!",
              "START NOW"),
          SizedBox(height: 20),
          containerBoxWidget(
              AppAssets.consultingImage,
              Color(0xffBB2031),
              "ONLINE RESOURCES",
              "Workshops, style guides, and webinars designed to educate and elevate your signature style from the comfort of your own home. Learn everything from how to edit, shop, and style like a pro to reading the virtual room and buying the perfect swimsuit for YOU, not that gal on Instagram.",
              "LEARN MORE"),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              AppAssets.viewOpeningsImage,
              height: 175,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "THE STYLIST",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 200,
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(AppAssets.rectangleImage,
                          fit: BoxFit.cover))),
              Container(),
            ],
          ),
          SizedBox(height: 30),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                color: Color(0xff01AEC7),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "MEET NATALIE",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 1.5, color: Colors.white),
                      SizedBox(height: 10),
                      Text(
                        "NOT YOUR TYPICAL STYLIST STORY",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          "When I was young, my mother sent me to every etiquette training imaginable with the warning, “At any moment you could dine at the President’s table.” Considering the fact that I grew up climbing trees and plotting what I could sell to fund my candy addiction, you can imagine my mom’s desire to gently shove her daughter in the general direction of Emily Post.",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.white),
                        ),
                      ),
                      // Container(
                      //   height: 100,
                      //   width: 40,
                      //   color: Color(0xff3a849f),
                      //   child: Text(""),
                      // ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 20,
                top: 120,
                child: Container(
                  height: 60,
                  width: 25,
                  color: Color(0xff3a849f),
                  child: Center(
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: RichText(
                        text: const TextSpan(
                          text: 'more',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 20,
                top: -140,
                child: Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 223,
                    width: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(AppAssets.boxImage,
                            fit: BoxFit.cover))),
              ),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: Text("PRESS",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 23)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "READ ALL ABOUT IT.",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  "Natalie is passionate about sharing her style and brand knowledge on stage, on air, and online. She can be seen making regular appearances on national and local TV channels like Great Day Houston and Houston Life as she talks fashion, life, and psychology of style.",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                ),
                SizedBox(height: 30),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppAssets.videoImage, height: 140),
                      SizedBox(width: 20),
                      Image.asset(AppAssets.videoImage, height: 140),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Divider(thickness: 1.5, color: Colors.black54),
          SizedBox(height: 10),
          Text(
            "MENTIONS",
            textAlign: TextAlign.start,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AlignedGridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 9,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10, right: 5),
                    //height: 80,
                    //width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              blurRadius: 4)
                        ]),
                    child: Image.asset(AppAssets.signature2Image,
                        fit: BoxFit.fill),
                  );
                }),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            color: Colors.black54,
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  "CLIENT BUZZ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: Colors.white),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back, color: Colors.white),
                    SizedBox(width: 10),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              children: [
                                SizedBox(height: 30),
                                Text(
                                  "Laura Bonck",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                                Text(
                                  "2022-04-28",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Natalie is so fun to work with! She really has an eye for items that will complement your body shape/ color. I will never again shop without her. When I shop alone, I question what I buy and waste time/money.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            left: 0,
                            right: 0,
                            top: -25,
                            child:
                                Image.asset(AppAssets.userImage, height: 50)),
                      ],
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_forward, color: Colors.white),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Image.asset(AppAssets.currentlyImage),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 180,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              //border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.4),
                                    blurRadius: 4)
                              ]),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(AppAssets.crimImage,
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                          left: -15,
                          top: 70,
                          child: CircleAvatar(
                              radius: 17,
                              child: Icon(Icons.arrow_back),
                              backgroundColor: Color(0xff00AEC7)),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Dermaflash \nExfoliation",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 180,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              //border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.4),
                                    blurRadius: 4)
                              ]),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(AppAssets.crimImage,
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                          right: -15,
                          top: 70,
                          child: CircleAvatar(
                              radius: 17,
                              child: Icon(Icons.arrow_forward),
                              backgroundColor: Color(0xff00AEC7)),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Summer Fridays \nR&R Mask",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            width: double.infinity,
            color: Color(0xffF1EFED),
            child: Column(
              children: [
                SizedBox(height: 30),
                Text(
                  "STYLE NOTES",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                SizedBox(height: 10),
                Text(
                  "WELCOME TO THE SIGNATURE STYLE BLOG!",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                ),
                SizedBox(height: 20),
                Text(
                  "Enjoy our notes on all things style – in the closet and at home. Sharing can’t miss styles, tips, behind-the-scenes, TV spot recaps, the tiny interns, and the Signature Style lifestyle.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
                SizedBox(height: 30),
                containerBoxWidget2(
                    AppAssets.image1Image, "Makeover for Life \nWinner – Dave"),
                SizedBox(height: 20),
                containerBoxWidget2(
                    AppAssets.image2Image, "How to Wear Living \nCoral"),
                SizedBox(height: 20),
                containerBoxWidget2(AppAssets.image3Image,
                    "How To Personalize Gift \nCard Gifts"),
                SizedBox(height: 30),
              ],
            ),
          ),
          Image.asset(AppAssets.image4Image),
          Container(
            color: Color(0xff1AA6BF),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: List.generate(
                    5,
                    (index) => Padding(
                          padding: const EdgeInsets.only(
                              right: 5, left: 10, top: 10, bottom: 20),
                          child: Image.asset(AppAssets.localImage, height: 90),
                        )),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Color(0xff003057),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Text(
                    "CONTACT",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Sign up for our newsletter & more information!",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Thank you for your interest in Signature Style! Please complete the form below to start the conversation. In the meantime, check out our Instagram, Facebook page, Pinterest and Twitter feed for tips and helpful information!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    validator: (val) =>
                        val!.trim().isEmpty ? "field required" : null,
                    textFieldType: TextFieldType.userName,
                    textEditingController: nameController,
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    validator: (val) =>
                        val!.trim().isEmpty ? "field required" : null,
                    textFieldType: TextFieldType.emailAddress,
                    textEditingController: emailController,
                  ),
                  SizedBox(height: 10),
                  // Container(
                  //   height: 40,
                  //   child: TextFormField(
                  //     textAlignVertical: TextAlignVertical.center,
                  //     style: TextStyle(color: Colors.white, fontSize: 14),
                  //     controller: phoneController,
                  //     keyboardType: TextInputType.number,
                  //     maxLength: 10,
                  //     //textInputAction: TextInputAction.next,
                  //     decoration: InputDecoration(
                  //       contentPadding:
                  //           const EdgeInsets.only(top: 10, left: 15),
                  //       hintText: "IFSC Code",
                  //       hintStyle: TextStyle(color: Colors.white),
                  //       //labelStyle: TextStyle(color: Colors.black, fontSize: 14),
                  //       //focusColor: Colors.black12,
                  //       focusedErrorBorder: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(5),
                  //         borderSide: BorderSide(color: Colors.white),
                  //       ),
                  //       fillColor: Color(0xff003057),
                  //       errorBorder: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(5),
                  //         borderSide: BorderSide(color: Colors.white),
                  //       ),
                  //       enabledBorder: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(5),
                  //         borderSide: BorderSide(color: Colors.white),
                  //       ),
                  //       focusedBorder: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(5),
                  //         borderSide: BorderSide(color: Colors.white),
                  //       ),
                  //       filled: true,
                  //     ),
                  //   ),
                  // ),
                  CustomTextField(
                    validator: (val) =>
                        val!.trim().isEmpty ? "field required" : null,
                    textFieldType: TextFieldType.phoneNumber,
                    textEditingController: phoneController,
                  ),
                  Row(
                    children: [
                      Text(
                        "i prefered to be conected",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      ...selectList
                          .asMap()
                          .map((index, value) => MapEntry(
                              index,
                              GestureDetector(
                                onTap: () {
                                  selectIndex = index;
                                  setState(() {});
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Row(
                                    children: [
                                      selectIndex == index
                                          ? CircleAvatar(
                                              radius: 6,
                                              backgroundColor: Colors.white,
                                              child: CircleAvatar(
                                                  radius: 4,
                                                  backgroundColor:
                                                      Color(0xff00AEC7)),
                                            )
                                          : CircleAvatar(
                                              radius: 6,
                                              backgroundColor: Colors.white),
                                      SizedBox(width: 10),
                                      Text(value,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Colors.white)),
                                    ],
                                  ),
                                ),
                              )))
                          .values
                          .toList(),
                    ],
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    validator: (val) =>
                        val!.trim().isEmpty ? "field required" : null,
                    textFieldType: TextFieldType.subject,
                    textEditingController: subjectController,
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                    controller: styleThroughController,
                    maxLines: 3,
                    //textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(top: 10, left: 15),
                      hintText: "i Found Signature Style Through...",
                      hintStyle: TextStyle(color: Colors.white),
                      //labelStyle: TextStyle(color: Colors.black, fontSize: 14),
                      //focusColor: Colors.black12,
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      fillColor: Color(0xff003057),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      filled: true,
                    ),
                  ),
                  // CustomTextField(
                  //   validator: (val) =>
                  //       val!.trim().isEmpty ? "field required" : null,
                  //   textFieldType: TextFieldType.styleThrough,
                  //   textEditingController: styleThroughController,
                  // ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "x 3 =18",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        "SUBMIT",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(thickness: 1.5, color: Colors.white),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...iconList.map((e) => Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 15, left: 10),
                                child: Row(
                                  children: [
                                    Image.asset(e.image, height: 30),
                                    SizedBox(width: 20),
                                    Text(e.name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Colors.white)),
                                  ],
                                ),
                              )),
                        ],
                      ),
                      Container(height: 220, width: 2, color: Colors.white),
                      Column(
                        children: [
                          SizedBox(height: 40),
                          Text(
                            "FOR MORE INFORMATION, \nPLEASE CONTACT",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "natalie@natalieweakly.com",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          Image.asset(AppAssets.userImage, height: 60),
                        ],
                      ),
                    ],
                  ),
                  Divider(thickness: 1.5, color: Colors.white),
                  SizedBox(height: 30),
                  Image.asset(AppAssets.signatureImage, height: 120),
                  SizedBox(height: 10),
                  Text(
                    "© Copyright 2023 Signature Style. All Rights Reserved.",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.white),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget containerBoxWidget(String image, Color color, String text,
      String description, String containerText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: color),
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 4),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 20),
              Image.asset(image, height: 60),
              SizedBox(height: 20),
              Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                    color: Color(0xff002343)),
              ),
              SizedBox(height: 10),
              Text(
                description,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
              SizedBox(height: 15),
              Container(
                height: 45,
                width: 170,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3), blurRadius: 4),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Book Me",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }

  Widget containerBoxWidget2(String image, String text) {
    return Container(
      width: 240,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black.withOpacity(0.4), blurRadius: 4),
      ]),
      child: Column(
        children: [
          Container(
              width: 240,
              child: Image.asset(image, fit: BoxFit.cover, height: 200)),
          SizedBox(height: 10),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
