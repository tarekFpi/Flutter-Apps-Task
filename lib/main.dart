import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_list/core/features/home/home_screen.dart';
import 'package:product_list/core/theme/app_theme.dart';
import 'package:oktoast/oktoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme(),
        themeMode: ThemeMode.light,
        home: HomeScreen(),
      ),
    );
  }
}

