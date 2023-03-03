import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:signature_stayle/const/app_color.dart';
import 'package:signature_stayle/const/app_icon.dart';
import 'package:signature_stayle/const/dispose_keyboard.dart';
import 'package:signature_stayle/ui/screen/drawer/contact_screen.dart';
import 'package:signature_stayle/ui/screen/drawer/style_screen.dart';
import 'package:signature_stayle/ui/screen/home/common_home_widget.dart';
import '../../../widget/app_bar.dart';
import '../../../widget/common_text_field.dart';
import '../drawer/resources_screen.dart';
import '../drawer/speaking_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/homeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> list = [
    "SERVICES",
    "MEET NATALIE",
    "RESOURCES",
    "SPEAKING",
    "CONTACT",
    "STYLE NOTES"
  ];

  int selectScreen = 6;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (selectScreen != 6) {
          selectScreen = 6;
          setState(() {});
          return false;
        } else {
          return true;
        }
      },
      child: GestureDetector(
        onTap: () {
          disposeKeyboard();
        },
        child: Scaffold(
          key: _scaffoldKey,
          drawer: drawer(),
          body: Column(
            children: [
              AppBarCommon(
                scaffoldkey: _scaffoldKey,
              ),
              Expanded(
                child: _getDrawerItemWidget(selectScreen),
              ),
            ],
          ),
        ),
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

  Widget drawer() {
    return Container(
      width: 260,
      decoration: BoxDecoration(
          color: Color(0xff1AA6BF),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(35), topRight: Radius.circular(35))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(AppAssets.backButtonImage, height: 30),
          ),
          SizedBox(height: 10),
          ...list
              .asMap()
              .map((index, value) => MapEntry(
                  index,
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          selectScreen = index;

                          setState(() {});
                        },
                        child: Container(
                          height: 30,
                          width: double.infinity,
                          color: Colors.transparent,
                          margin: EdgeInsets.only(bottom: 5, top: 5),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              value,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Divider(thickness: 1.5, color: Colors.white),
                    ],
                  )))
              .values
              .toList(),
        ],
      ),
    );
  }

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return Container();
      case 1:
        return Container();
      case 2:
        return ReSourcesScreen();
      case 3:
        return SpeakingScreen();
      case 4:
        return ContactScreen();
      case 5:
        return StyleScreen();
      default:
        return CommonHomeWidget();
    }
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

class IconModel {
  final String image;
  final String name;

  const IconModel(this.image, this.name);
}

// PreferredSizeWidget backAndUserAppBar() {
//   return PreferredSize(
//     preferredSize: const Size.fromHeight(45),
//     child: Padding(
//       padding: EdgeInsets.only(top: 35, right: 15,left: 15),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           GestureDetector(
//               onTap: () {
//                 _scaffoldKey.currentState?.openDrawer();
//               },
//               child: Image.asset(AppAssets.menuImage, height: 30)),
//           Image.asset(AppAssets.signatureImage, height: 55),
//           Image.asset(AppAssets.signatureImage, height: 55),
//         ],
//       ),
//     ),
//   );
// }
