import 'package:flutter/material.dart';

class TolovPage extends StatefulWidget {
  static const String id = "tolov_page";

  const TolovPage({Key? key}) : super(key: key);

  @override
  State<TolovPage> createState() => _TolovPageState();
}

class _TolovPageState extends State<TolovPage> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "To'lov",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SizedBox(
          height: _height,
          width: _width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: _height * 0.07,
                  width: _width,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        size: 35,
                      ),
                      border: InputBorder.none,
                      hintText: "Izlash",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 25),
                      contentPadding: EdgeInsets.all(12),
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
                      "Saqlanganlari",
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
                            color: Colors.lightBlueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: _height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5),
                      height: _height * 0.16,
                      width: _width * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              spreadRadius: 1,
                              offset: Offset(0, 0),
                            ),
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              spreadRadius: 1,
                              offset: Offset(0, 0),
                            ),
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                            image: const AssetImage(
                              "assets/images/images (1).png",
                            ),
                            height: _height * 0.07,
                            fit: BoxFit.cover,
                          ),
                          const Text("Telefon raqam"),
                          const Text("+998912402164"),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: _width * 0.13,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.lightBlue.shade100,
                      radius: 35,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          size: 34,
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: _height * 0.08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Xizmatga to'lov",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Yana",
                        style: TextStyle(
                            color: Colors.lightBlue.shade300,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      tolov(Icons.bookmark, "Ko'p qo'llaniladigan"),
                      SizedBox(
                        width: _width * 0.02,
                      ),
                      tolov(Icons.bookmark, "Ko'p qo'llaniladigan"),
                      SizedBox(
                        width: _width * 0.02,
                      ),
                      tolov(Icons.bookmark, "Ko'p qo'llaniladigan"),
                      SizedBox(
                        width: _width * 0.02,
                      ),
                      tolov(Icons.bookmark, "Ko'p qo'llaniladigan"),
                      SizedBox(
                        width: _width * 0.02,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: _height * 0.08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Mening uyim",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Yana",
                        style: TextStyle(
                            color: Colors.lightBlue.shade300,
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
                  margin: EdgeInsets.all(5),
                  height: _height * 0.1,
                  width: _width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                        spreadRadius: 0,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.lightBlue.shade200,
                        size: 35,
                      ),
                      const Text(
                        "Uyni qo'shish",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          size: 30,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: _height * 0.06,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Joylardagi to'lov",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Yana",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.lightBlue.shade200,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: _height * 0.03,
                ),
                Center(
                  child: Container(
                    height: _height * 0.2,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange),
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.orange.withOpacity(0.2)),
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.warning,
                              color: Colors.orange,
                              size: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Flexible(
                              child: Text(
                                "To'g'ri ishlashi uchun geolakatsiyani yoqish lozim ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                maxLines: 3,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Yoqish",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.lightBlue.shade200,
                                    fontSize: 20),
                              ),),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget tolov(
    logo,
    text,
  ) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      height: _height * 0.14,
      width: _width * 0.25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2,
              spreadRadius: 0,
              offset: Offset(0, 1),
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(logo),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
