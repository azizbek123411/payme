import 'package:flutter/material.dart';

class Historypage extends StatefulWidget {
  static const String id = "history_page";

  const Historypage({Key? key}) : super(key: key);

  @override
  State<Historypage> createState() => _HistorypageState();
}

class _HistorypageState extends State<Historypage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            tabs: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Tushum",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "+ 0 so'm",
                    style: TextStyle(
                        color: Colors.lightBlue.shade200, fontSize: 16),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Chiqim",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "+ 0 so'm",
                    style: TextStyle(color: Colors.pink.shade200, fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          title: const Text(
            "To'lovlar monitoringi",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    transfer("assets/images/images (1).png", "33", "100 so'm",
                        "11:11"),
                    const SizedBox(
                      height: 20,
                    ),
                    transfer("assets/images/images (1).png", "33", "100 so'm",
                        "11:11"),
                    const SizedBox(
                      height: 20,
                    ),
                    transfer("assets/images/images (1).png", "33", "100 so'm",
                        "11:11"),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    transfer("assets/images/images (1).png", "33", "100 so'm",
                        "11:11"),
                    const SizedBox(
                      height: 20,
                    ),
                    transfer("assets/images/images (1).png", "33", "100 so'm",
                        "11:11"),
                    const SizedBox(
                      height: 20,
                    ),
                    transfer("assets/images/images (1).png", "33", "100 so'm",
                        "11:11"),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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
