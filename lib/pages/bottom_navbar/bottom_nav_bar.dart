import 'dart:ui';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:payme/pages/history/history_page.dart';
import 'package:payme/pages/servislar/servislar_page.dart';
import 'package:payme/pages/tolov_page/tolov.dart';
import 'package:payme/pages/transfer_page/transfer_page.dart';

import '../home_page/home_page.dart';

class BottomNavBar extends StatefulWidget {
  static const String id = "bottom_nav_bar";

  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdcf0f9),
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: const [
              HomePage(),
              TransferPage(),
              TolovPage(),
              ServislarPage(),
              Historypage(),
            ],
            onPageChanged: (int index) {
              setState(
                () {
                  currentIndex = index;
                },
              );
            },
          ),
        ],
      ),

      bottomNavigationBar: navBar(),
    );
  }

  /// bottom navigation bar widget
  Widget navBar() {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaY: 10,
          sigmaX: 10,
        ),
        child: Container(
          height: size.height * 0.088,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade200),
            color: Colors.white.withOpacity(0.7),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        pageController.jumpToPage(0);
                        currentIndex == 0;
                      });
                    },
                    icon: Icon(
                      Icons.grid_view_outlined,
                      color: currentIndex == 0
                          ? const Color(0xff1FBDBE)
                          : Colors.grey,
                      size: 35,
                    ),
                  ),
                  Text(
                    "Asosiy",
                    style: TextStyle(
                        fontSize: 14,
                        color: currentIndex == 0
                            ? const Color(0xff1FBDBE)
                            : Colors.grey),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        pageController.jumpToPage(1);
                        currentIndex == 1;
                      });
                    },
                    icon: Icon(
                      EvaIcons.swap,
                      color: currentIndex == 1
                          ? const Color(0xff1FBDBE)
                          : Colors.grey,
                      size: 35,
                    ),
                  ),
                  Text(
                    "O'tkazma",
                    style: TextStyle(
                        fontSize: 14,
                        color: currentIndex == 1
                            ? const Color(0xff1FBDBE)
                            : Colors.grey),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        pageController.jumpToPage(2);
                        currentIndex == 2;
                      });
                    },
                    icon: Icon(
                     IconlyLight.wallet,
                      color: currentIndex == 2
                          ? const Color(0xff1FBDBE)
                          : Colors.grey,
                      size: 35,
                    ),
                  ),
                  Text(
                    "To'lov",
                    style: TextStyle(
                        fontSize: 14,
                        color: currentIndex == 2
                            ? const Color(0xff1FBDBE)
                            : Colors.grey),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        pageController.jumpToPage(3);
                        currentIndex == 3;
                      });
                    },
                    icon: Icon(
                    Icons.home_repair_service_rounded,
                      color: currentIndex == 3
                          ? const Color(0xff1FBDBE)
                          : Colors.grey,
                      size: 35,
                    ),
                  ),
                  Text(
                    "Servislar",
                    style: TextStyle(
                        fontSize: 14,
                        color: currentIndex == 3
                            ? const Color(0xff1FBDBE)
                            : Colors.grey),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        pageController.jumpToPage(4);
                        currentIndex == 4;
                      });
                    },
                    icon: Icon(
                      Icons.history,
                      color: currentIndex == 4
                          ? const Color(0xff1FBDBE)
                          : Colors.grey,
                      size: 35,
                    ),
                  ),
                  Text(
                    "Kirim-chiqim",
                    style: TextStyle(
                        fontSize: 14,
                        color: currentIndex == 4
                            ? const Color(0xff1FBDBE)
                            : Colors.grey),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
