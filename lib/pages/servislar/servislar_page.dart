import 'package:flutter/material.dart';

class ServislarPage extends StatefulWidget {
  static const String id = "service_page";

  const ServislarPage({Key? key}) : super(key: key);

  @override
  State<ServislarPage> createState() => _ServislarPageState();
}

class _ServislarPageState extends State<ServislarPage> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Servislar",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SizedBox(
          height: _height,
          width: _width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: _height*0.02,
                ),
                servis("assets/images/images (1).png",
                    "Ma'lumotnomalar va davlar xizmatlari", ""),
                servis("assets/images/images (1).png",
                    "Ma'lumotnomalar va davlar xizmatlari", "O'chirilagan"),
                servis("assets/images/images (1).png",
                    "Ma'lumotnomalar va davlar xizmatlari", ""),
                servis("assets/images/images (1).png",
                    "Ma'lumotnomalar va davlar xizmatlari", "O'chirilagan"),
                servis("assets/images/images (1).png",
                    "Ma'lumotnomalar va davlar xizmatlari", "O'chirilagan"),
                servis("assets/images/images (1).png",
                    "Ma'lumotnomalar va davlar xizmatlari", "O'chirilagan"),
                servis("assets/images/images (1).png",
                    "Ma'lumotnomalar va davlar xizmatlari", "O'chirilagan"),
                servis("assets/images/images (1).png",
                    "Ma'lumotnomalar va davlar xizmatlari", "O'chirilagan"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget servis(image, text, subtext) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(5),
            height: _height * 0.13,
            width: _width * 0.9,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1.3),
                  )
                ]),
            child: ListTile(
              leading: Image(
                image: AssetImage(image),
              ),
              title: Text(
                text,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
              subtitle: Text(subtext),
            ),
          ),
        ),
        SizedBox(
          height: _height * 0.02,
        )
      ],
    );
  }
}
