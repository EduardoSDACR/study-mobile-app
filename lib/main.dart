import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:studyng_app/bindings/initial_bindings.dart';
import 'package:studyng_app/configs/themes/app_dark_theme.dart';
import 'package:studyng_app/configs/themes/app_light_theme.dart';
import 'package:studyng_app/controllers/theme_controller.dart';
import 'package:studyng_app/data_uploader_screen.dart';
import 'package:studyng_app/firebase_options.dart';
import 'package:get/get.dart';
import 'package:studyng_app/routes/app_routes.dart';
import 'package:studyng_app/screens/introduction/introduction.dart';
import 'package:studyng_app/screens/splash/splash_screen.dart';

/* void main() {
  WidgetsFlutterBinding.ensureInitialized();
  InitialBindings().dependencies();
  runApp(MyApp());
} */

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  InitialBindings().dependencies();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Get.find<ThemeController>().lightTheme,
      getPages: AppRoutes.routes(),
    );
  }
}
