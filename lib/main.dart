import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:signature_stayle/route/route_generator.dart';
import 'package:signature_stayle/ui/screen/splashscreen/splash_screen.dart';
import 'core/bindings/app_bindings.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: "Heebo",
      ),
      initialBinding: AppBindings(),
      initialRoute: SplashScreen.routeName,
      debugShowCheckedModeBanner: false,
      getPages: routes,
    );
  }
}
