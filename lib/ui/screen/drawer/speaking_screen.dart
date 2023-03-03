import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:signature_stayle/const/dispose_keyboard.dart';

import '../../../const/app_icon.dart';
import '../../../widget/app_bar.dart';
import '../../../widget/common_text_field.dart';

class SpeakingScreen extends StatefulWidget {
  static const String routeName = '/speakingScreen';
  const SpeakingScreen({Key? key}) : super(key: key);

  @override
  State<SpeakingScreen> createState() => _SpeakingScreenState();
}

class _SpeakingScreenState extends State<SpeakingScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController organizationController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController eventDateController = TextEditingController();
  TextEditingController attendessController = TextEditingController();
  TextEditingController desiredController = TextEditingController();
  TextEditingController topicsController = TextEditingController();
  TextEditingController additionalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        disposeKeyboard();
      },
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(children: [
          Container(
            height: 200,
            width: double.infinity,
            child: Image.asset(AppAssets.speaking2Image, fit: BoxFit.cover),
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
              "Natalie is a professional lifestyle speaker and expert in her field with a fun, informative, and captivating speaking style leaving audiences with practical methods to enhance personal brand, style, and presence.",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
            ),
          ),
          SizedBox(height: 20),
          Image.asset(AppAssets.speaking3Image),
          SizedBox(height: 20),
          Text(
            "SPEAKING TOPICS",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Drawing on her 20 years of presentation experience, Natalie is a professional lifestyle speaker having delivered Signature Style content to thousands of audience members and appeared in more than 30 TV segments. She is available for in-person and virtual presentation which range from 20min-full day workshops and can be co-ed, male-, or female-focused. Most requested topics are listed below with several other options available for your company, networking, affinity, or non-profit group. Contact using the form below to create a session your attendees will love!",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
            ),
          ),
          SizedBox(height: 20),
          containerBox(AppAssets.speakingImage1, "YOU. ONLINE.",
              "How do you appear online? In a video conference or on your LinkedIn profile? This timely session covers what makes the perfect headshot, LinkedIn profiles, and how to navigate digital body language during online meetings – including a mini course in reading facial microexpressions – as well as in email, text, and chat tools. These are easy elements to use to project one’s best and can go a long way toward creating a great first impression."),
          containerBox(AppAssets.speakingImage2, "PSYCHOLOGY OF STYLE",
              "This audience favorite provides insight into how what we wear impacts us and our audience. Combining her skills of image consultant and lifestyle speaker, Natalie will share how to translate the leading psychology of color theories into your wardrobe to give you the extra edge, without saying a word."),
          Text(
            "LOOK GREAT EVERY DAY",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            "Looking great every day is not about owning particular pieces or staying on top of trends. It’s about discovering your personal style and rocking it every day. Take the fuss out of dressing. Walk away from this presentation with simple, practical techniques to help you look great every day, for every occasion.",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
          ),
          SizedBox(height: 20),
          containerBox(AppAssets.speakingImage3, "CLASS AND CHARISMA",
              "Whether it’s a big interview or a date, from handshake to final goodbye, you are on display. Stand out from and build up clients, colleagues, and friends with the tips in this etiquette, networking and social skills presentation that can be customized to focus on corporate, interviewing, dining, social, and dating situations."),
          containerBox(AppAssets.speakingImage4, "WITH CONFIDENCE",
              "How exactly does one project confidence? In this presentation we’ll discuss style as it relates to a confident image, body language techniques, and what and how to say things to best convey confidence and eliminate self-sabotage barriers."),
          containerBox(AppAssets.speakingImage5, "ADDITIONAL TOPICS INCLUDE:",
              "Additional custom topics available in the lifestyle speaker space. Check out Natalie’s YouTube channel for speaking teaser video and a few of Natalie’s TV appearances. Contact for more details!"),
          textDescription("Executive Presence"),
          textDescription("Strategic Mindset"),
          textDescription("Emotional Intelligence"),
          textDescription("Presentation Skill Development, and "),
          textDescription("Personal Branding"),
          SizedBox(height: 30),
          Text(
            "UPCOMING ENGAGEMENTS",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          SizedBox(height: 30),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  CircleAvatar(
                      radius: 17,
                      child: Icon(Icons.arrow_back),
                      backgroundColor: Color(0xff00AEC7)),
                  SizedBox(width: 5),
                  Container(
                    height: 170,
                    width: 125,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          Text("11/3",
                              style: TextStyle(color: Color(0xff00AEC7))),
                          SizedBox(height: 10),
                          Text(
                              "Houston Christian University “Psychology of Style”",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12)),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 125,
                    height: 170,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          Text("1/25",
                              style: TextStyle(color: Color(0xff00AEC7))),
                          SizedBox(height: 10),
                          Text("PNC Bank “Presence and Confidence”",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12)),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  CircleAvatar(
                      radius: 17,
                      child: Icon(Icons.arrow_forward),
                      backgroundColor: Color(0xff00AEC7)),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Text(
            "UPCOMING ENGAGEMENTS",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AlignedGridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 12,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 5, bottom: 10),
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
          SizedBox(height: 35),
          Container(
            width: double.infinity,
            color: Colors.black54,
            child: Column(children: [
              SizedBox(height: 20),
              Text(
                "CLIENT BUZZ",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: Colors.white),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(AppAssets.speakingImage6, height: 120),
                      SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "I have had the good fortune to work with Natalie for the past 4 years through a development program for a group of high potential leaders. Year after year, her presentation on executive presence was a highly-rated favorite! Our participants described her as a knowledgeable, fun, positive professional with a keen eye for detail.",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 11),
                            ),
                            SizedBox(height: 10),
                            Text(
                              " Lathonia O., Memorial Hermann",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xff00AEC7)),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
            ]),
          ),
          Container(
              width: double.infinity,
              color: Color(0xff003057),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(children: [
                  SizedBox(height: 20),
                  Text(
                    "CONTACT",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "WANT TO HIRE NATALIE WEAKLY TO SPEAK AT YOUR WORKSHOP, CONFERENCE OR EVENT?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "To reserve Natalie as a presenter or speaker, check corporate and non-profit pricing, or inquire about other topic selections, please complete the form below.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    validator: (val) =>
                        val!.trim().isEmpty ? "field required" : null,
                    textFieldType: TextFieldType.name,
                    textEditingController: nameController,
                  ),
                  SizedBox(height: 15),
                  CustomTextField(
                    validator: (val) =>
                        val!.trim().isEmpty ? "field required" : null,
                    textFieldType: TextFieldType.title,
                    textEditingController: titleController,
                  ),
                  SizedBox(height: 15),
                  CustomTextField(
                    validator: (val) =>
                        val!.trim().isEmpty ? "field required" : null,
                    textFieldType: TextFieldType.organization,
                    textEditingController: organizationController,
                  ),
                  SizedBox(height: 15),
                  CustomTextField(
                    validator: (val) =>
                        val!.trim().isEmpty ? "field required" : null,
                    textFieldType: TextFieldType.emailAddress2,
                    textEditingController: emailAddressController,
                  ),
                  SizedBox(height: 15),
                  CustomTextField(
                    validator: (val) =>
                        val!.trim().isEmpty ? "field required" : null,
                    textFieldType: TextFieldType.eventDate,
                    textEditingController: eventDateController,
                  ),
                  SizedBox(height: 15),
                  CustomTextField(
                    validator: (val) =>
                        val!.trim().isEmpty ? "field required" : null,
                    textFieldType: TextFieldType.attendess,
                    textEditingController: attendessController,
                  ),
                  SizedBox(height: 15),
                  CustomTextField(
                    validator: (val) =>
                        val!.trim().isEmpty ? "field required" : null,
                    textFieldType: TextFieldType.desired,
                    textEditingController: desiredController,
                  ),
                  SizedBox(height: 15),
                  CustomTextField(
                    validator: (val) =>
                        val!.trim().isEmpty ? "field required" : null,
                    textFieldType: TextFieldType.topics,
                    textEditingController: topicsController,
                  ),
                  SizedBox(height: 15),
                  CustomTextField(
                    validator: (val) =>
                        val!.trim().isEmpty ? "field required" : null,
                    textFieldType: TextFieldType.additional,
                    textEditingController: additionalController,
                  ),
                  SizedBox(height: 50),
                  Container(
                    height: 45,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 4),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "SUBMIT",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(thickness: 1.5, color: Colors.white),
                  SizedBox(height: 20),
                  Image.asset(AppAssets.signatureImage, height: 120),
                  SizedBox(height: 20),
                  Text(
                    "© Copyright 2023 Signature Style. All Rights Reserved.",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.white),
                  ),
                  SizedBox(height: 20),
                ]),
              )),
        ]),
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
          SizedBox(height: 20),
        ],
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
