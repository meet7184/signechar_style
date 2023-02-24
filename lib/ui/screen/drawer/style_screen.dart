import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:signature_stayle/core/bindings/dispose_keyboard.dart';

import '../../../const/app_icon.dart';
import '../../../widget/common_text_field.dart';

class StyleScreen extends StatefulWidget {
  static const String routeName = '/styleScreen';
  const StyleScreen({Key? key}) : super(key: key);

  @override
  State<StyleScreen> createState() => _StyleScreenState();
}

class _StyleScreenState extends State<StyleScreen> {
  TextEditingController emailController = TextEditingController();
  List<String> list = ["category", "category2", "category3", "category4"];
  String? selected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        disposeKeyboard();
      },
      child: Scaffold(
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
            title: Center(
                child: Image.asset(AppAssets.signatureImage, height: 55)),
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    child:
                        Image.asset(AppAssets.style1Image, fit: BoxFit.cover),
                  ),
                  Positioned(
                      left: 0,
                      right: 0,
                      bottom: -20,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Image.asset(AppAssets.style2Image),
                      )),
                ],
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
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
                          child: Image.asset(AppAssets.style3Image,
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "How to Personalize Gift Card Gifts Some of the best gifts are the hardest ones to fit under the tree. Personalizing gift card gifts is a nice way to level up the presenting of your thoughtful and fun gift on the actual gift-giving day! Here are a few ideas on how to personalize a gift card gift in style. Pair It With Something A small gift to pair with the big gift is a nice way for your recipient to have something physical in their hand. Buying a cooking class? Gift a fun mini spatula set [...]",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                color: Color(0xffF1EFED),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "MOST RECENT",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                    SizedBox(height: 20),
                    AlignedGridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              children: [
                                Image.asset(
                                  AppAssets.style4Image,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Makeover For Life \nParty Recap",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "December 7th, 2020|Style",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          );
                        }),
                    SizedBox(height: 30),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Image.asset(AppAssets.style5Image),
              SizedBox(height: 70),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff002343)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          SizedBox(height: 40),
                          Image.asset(AppAssets.style6Image, height: 100),
                          SizedBox(height: 10),
                          Text(
                            "I am an image consultant who believes everyone has a signature style they can rock with confidence. A passionate entrepreneur, color addict, and new mom. I'm so grateful to have clients who can benefit from my shoe and shopping problem.",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      left: 0,
                      right: 0,
                      top: -50,
                      child: Image.asset(AppAssets.style8Image, height: 110)),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: CustomTextField(
                  validator: (val) =>
                      val!.trim().isEmpty ? "field required" : null,
                  textFieldType: TextFieldType.search,
                  textEditingController: emailController,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: DropdownButtonHideUnderline(
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xff003057)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: DropdownButton2(
                      hint: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "select category",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                      ),
                      icon: const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(Icons.keyboard_arrow_down_outlined),
                      ),
                      items: list
                          .map(
                            (item) => DropdownMenuItem<String>(
                              value: item.toString(),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12, left: 20),
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                      value: selected,
                      onChanged: (value) {
                        selected = value;
                        setState(() {});
                      },
                    ),
                  ),
                ),
              ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
