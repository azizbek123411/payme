import 'package:flutter/material.dart';
import 'package:payme/pages/bottom_navbar/bottom_nav_bar.dart';
import 'package:payme/pages/history/history_page.dart';
import 'package:payme/pages/home_page/home_page.dart';
import 'package:payme/pages/servislar/servislar_page.dart';
import 'package:payme/pages/splash_page/lock_screen/lock_page.dart';
import 'package:payme/pages/tolov_page/tolov.dart';
import 'package:payme/pages/transfer_page/transfer_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ScreenLock(),
      routes: {
        BottomNavBar.id: (context) => const BottomNavBar(),
        HomePage.id: (context) => const HomePage(),
        TransferPage.id: (context) => const TransferPage(),
        TolovPage.id: (context) => const TolovPage(),
        ServislarPage.id:(context)=>const ServislarPage(),
        Historypage.id:(context)=>const Historypage(),
        ScreenLock.id:(context)=>const ScreenLock(),
      },
    );
  }
}
