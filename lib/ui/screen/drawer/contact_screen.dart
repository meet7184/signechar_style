import 'package:flutter/material.dart';
import 'package:signature_stayle/core/bindings/dispose_keyboard.dart';

import '../../../const/app_icon.dart';
import '../../../widget/common_text_field.dart';

class ContactScreen extends StatefulWidget {
  static const String routeName = '/contactScreen';
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  int selectIndex = 0;
  List<String> selectList = ["Email", "Phone", "Either"];
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController styleThroughController = TextEditingController();
  List<String> iconList = [
    AppAssets.facebookImage,
    AppAssets.instagramImage,
    AppAssets.linkedinImage,
    AppAssets.pinterestImage,
    AppAssets.twitterImage,
  ];
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
              Container(
                height: 200,
                width: double.infinity,
                child: Image.asset(AppAssets.speaking2Image, fit: BoxFit.cover),
              ),
              SizedBox(height: 20),
              Text(
                "CONTACT",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
              ),
              SizedBox(height: 20),
              Text(
                "Sign up for our newsletter & more information!",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Thank you for your interest in Signature Style! Please complete the form below to start the conversation. In the meantime, check out our Instagram, Facebook page, Pinterest and Twitter feed for tips and helpful information!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    CustomTextField(
                      validator: (val) =>
                          val!.trim().isEmpty ? "field required" : null,
                      textFieldType: TextFieldType.userName2,
                      textEditingController: nameController,
                    ),
                    SizedBox(height: 10),
                    CustomTextField(
                      validator: (val) =>
                          val!.trim().isEmpty ? "field required" : null,
                      textFieldType: TextFieldType.emailAddress3,
                      textEditingController: emailController,
                    ),
                    SizedBox(height: 10),
                    CustomTextField(
                      validator: (val) =>
                          val!.trim().isEmpty ? "field required" : null,
                      textFieldType: TextFieldType.phoneNumber2,
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
                                                backgroundColor: Colors.black26,
                                                child: CircleAvatar(
                                                    radius: 4,
                                                    backgroundColor:
                                                        Color(0xff00AEC7)),
                                              )
                                            : CircleAvatar(
                                                radius: 6,
                                                backgroundColor:
                                                    Colors.black26),
                                        SizedBox(width: 10),
                                        Text(value,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12)),
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
                      textFieldType: TextFieldType.subject2,
                      textEditingController: subjectController,
                    ),
                    SizedBox(height: 15),
                    CustomTextField(
                      validator: (val) =>
                          val!.trim().isEmpty ? "field required" : null,
                      textFieldType: TextFieldType.styleThrough2,
                      textEditingController: styleThroughController,
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "x 3 =18",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 13),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 45,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Text(
                          "SUBMIT",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Divider(thickness: 1.5, color: Colors.black),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...iconList.map((e) => Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Image.asset(
                          e,
                          height: 35,
                          color: Colors.black,
                        ),
                      )),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "FOR MORE INFORMATION, \n PLEASE CONTACT",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "natalie@natalieweakly.com",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
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
