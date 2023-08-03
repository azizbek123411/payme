import 'package:flutter/material.dart';
import 'package:payme/pages/home_page/side_bar.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff1FBDBE),
      appBar: AppBar(
          //leading: Drawer(),

          actions: const [
            Icon(
              Icons.notifications_none_outlined,
              size: 30,
            )
          ],
          elevation: 0,
          backgroundColor: Color(0xff1FBDBE)),
      drawer: SideBar(),
      body: SizedBox(
        height: _height,
        width: _width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Umumiy balans",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        "2 343 434",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "so'm",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  const Text(
                    "Iyun oyidagi chiqim - 23 233 so'm",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: _height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 26,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.wallet_rounded,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: _height * 0.02,
                          ),
                          const Text(
                            "Kartalarim",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 26,
                            child: Text(
                              "GO",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: _height * 0.02,
                          ),
                          const Text(
                            "Payme Go",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 26,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.document_scanner_outlined,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: _height * 0.02,
                          ),
                          const Text(
                            "QR to'lov",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: _height * 0.068,
                          width: _width,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey.shade400)),
                          child: const TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                size: 33,
                              ),
                              border: InputBorder.none,
                              hintText: "Xizmatlarni qidirish",
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400),
                              contentPadding: EdgeInsets.all(13),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: _height * 0.04,
                        ),
                        const Text(
                          "O'tkazmalar",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: _height * 0.04,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: _height * 0.08,
                              width: _width * 0.44,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(3.0, 3.0),
                                      blurRadius: 3,
                                      spreadRadius: -3),
                                  BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(-3.0, -3.0),
                                      blurRadius: 3,
                                      spreadRadius: -3),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.wallet,
                                      color: Colors.lightBlue,
                                      size: 30,
                                    ),
                                  ),
                                  const Text(
                                    "Pul o'tkazish",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 19,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: _height * 0.08,
                              width: _width * 0.44,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(3.0, 3.0),
                                      blurRadius: 3,
                                      spreadRadius: -3),
                                  BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(-3.0, -3.0),
                                      blurRadius: 3,
                                      spreadRadius: -3),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.account_balance_wallet,
                                      size: 30,
                                      color: Colors.purple,
                                    ),
                                  ),
                                  const Text(
                                    "Pul so'rash",
                                    style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: _height * 0.04,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Saqlangan to'lovlar",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Yana",
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xff1FBDBE)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: _height * 0.03,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(3),
                              height: _height * 0.13,
                              width: _width * 0.226,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 3,
                                      spreadRadius: -3),
                                  BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(-4.0, -4.0),
                                      blurRadius: 3,
                                      spreadRadius: -3),
                                ],
                              ),
                              child: Column(
                                children: [
                                   const Image(image: AssetImage("assets/images/beeline.png"),height: 37,),
                                  SizedBox(
                                    height: _height * 0.01,
                                  ),
                                  const Text(
                                    "Mening telefon raqamim",
                                    style: TextStyle(),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: _width * 0.07,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff1FBDBE),
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Icon(
                                Icons.add,
                                size: 50,
                                color: Colors.lightBlue,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: _height * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Mening uyim",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Yana",
                                style: TextStyle(
                                    color: Color(0xff1FBDBE),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: _height * 0.03,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          height: _height * 0.07,
                          width: _width * 0.9,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(-4.0, -4.0),
                                blurRadius: 3,
                                spreadRadius: -3,
                              ),
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(4.0, 4.0),
                                  blurRadius: 3,
                                  spreadRadius: -3)
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.home,
                                color: Colors.lightBlue,
                                size: 35,
                              ),
                              const Text(
                                "Uyni qo'shish",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: _height * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "To'lov xizmatlar",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Yana",
                                style: TextStyle(
                                  color: Color(0xff1FBDBE),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: _height * 0.03,
                        ),
                        Container(
                          // height: _height*0.3,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                payme(Icons.book_online,
                                    "Ko'p qo'llaniladiganlar"),
                                SizedBox(
                                  width: _width * 0.04,
                                ),
                                payme(Icons.phone_android, "Mobil operatorlar"),
                                SizedBox(
                                  width: _width * 0.04,
                                ),
                                payme(Icons.travel_explore_outlined,
                                    "Internet provayder"),
                                SizedBox(
                                  width: _width * 0.04,
                                ),
                                payme(Icons.book_online,
                                    "Ko'p qo'llaniladiganlar"),
                                SizedBox(
                                  width: _width * 0.04,
                                ),
                                payme(Icons.book_online,
                                    "Ko'p qo'llaniladiganlar"),
                                SizedBox(
                                  width: _width * 0.04,
                                ),
                                payme(Icons.book_online,
                                    "Ko'p qo'llaniladiganlar"),
                                SizedBox(
                                  width: _width * 0.04,
                                ),
                                payme(Icons.book_online,
                                    "Ko'p qo'llaniladiganlar"),
                                SizedBox(
                                  width: _width * 0.04,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: _height * 0.04,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Oxirgi o'tkazmalar",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Yana",
                                  style: TextStyle(
                                      color: Color(0xff1FBDBE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: _height * 0.04,
                        ),
                        transfer("assets/images/images (6).jpeg", "10 iyun",
                            "+ 5000 so'm", "22:32"),
                        SizedBox(
                          height: _height * 0.04,
                        ),
                        transfer("assets/images/images (6).jpeg", "10 iyun",
                            "+ 5000 so'm", "22:32"),
                        SizedBox(
                          height: _height * 0.04,
                        ),
                        transfer("assets/images/images (6).jpeg", "10 iyun",
                            "+ 5000 so'm", "22:32"),
                        SizedBox(
                          height: _height * 0.04,
                        ),
                        transfer("assets/images/images (6).jpeg", "10 iyun",
                            "+ 5000 so'm", "22:32"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }

  Widget payme(
    logo,
    content,
  ) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: _height * 0.15,
      width: _width * 0.24,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(2, 2),
            blurRadius: 7,
            spreadRadius: 1,
          ),
          BoxShadow(
              color: Colors.grey,
              offset: Offset(-4.0, -4.0),
              blurRadius: 3,
              spreadRadius: -3),
        ],
      ),
      child: Column(
        children: [
          Icon(
            logo,
            size: 37,
            color: Colors.grey.shade700,
          ),
          SizedBox(
            height: _height * 0.022,
          ),
          Text(content),
        ],
      ),
    );
  }

  Widget transfer(image, data, summ, time) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(10),
      height: _height * 0.14,
      width: _width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                offset: Offset(4.0, 4.0),
                spreadRadius: -3,
                blurRadius: 3),
            BoxShadow(
                color: Colors.grey,
                offset: Offset(-4.0, -4.0),
                spreadRadius: -3,
                blurRadius: 3)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: AssetImage(image),
            height: _height * 0.1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                data,
                style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                summ,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.lightBlue.shade500,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                time,
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    );
  }
}
