import 'package:flutter/material.dart';

import '../const/app_icon.dart';

class AppBarCommon extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldkey;

  const AppBarCommon({Key? key, required this.scaffoldkey}) : super(key: key);

  @override
  State<AppBarCommon> createState() => _AppBarCommonState();
}

class _AppBarCommonState extends State<AppBarCommon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xff002343),
      child: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(bottom: 15, left: 20, right: 10, top: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      widget.scaffoldkey.currentState?.openDrawer();
                    },
                    child: Image.asset(AppAssets.menuImage, height: 26),
                  ),
                  Image.asset(AppAssets.signatureImage, height: 55),
                  Image.asset(AppAssets.menuImage,
                      height: 26, color: Colors.transparent),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
