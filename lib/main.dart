import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_it/get_it.dart';
import 'package:signature_stayle/route/route_generator.dart';
import 'package:signature_stayle/ui/screen/splashscreen/splash_screen.dart';
import 'const/app_bindings.dart';
import 'core/network/api_client.dart';
import 'core/network/dio/dio_api_client.dart';
import 'core/repository/user_repository.dart';
import 'core/repository/user_repository_impl.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt.I.registerSingletonAsync<ApiClient>(() => DioApiClient.getInstance());
  GetIt.I.registerSingletonWithDependencies<UserRepository>(
    () => UserRepositoryImpl(),
    dependsOn: [ApiClient],
  );
  await GetIt.I.allReady();

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
