import 'package:bookly/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/Splash/presentation/view/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.primaryColor,
      ),
      home: const SplashView(),
    );
  }
}
