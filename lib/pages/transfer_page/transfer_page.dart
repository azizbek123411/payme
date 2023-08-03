import 'package:flutter/material.dart';

class TransferPage extends StatefulWidget {
  static const String id = "transfer_page";

  const TransferPage({Key? key}) : super(key: key);

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Pul o'tkazmasi",
          style: TextStyle(
              fontSize: 24, color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SizedBox(
          height: _height,
          width: _width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Karta yoki telefon raqami ",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              SizedBox(
                height: _height*0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: _height * 0.08,
                    width: _width * 0.67,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                        hintText: "Karta yoki telefon raqami",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.lightBlueAccent.shade200,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.qr_code_scanner,
                        color: Colors.blue,
                        size: 28,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: _height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  transfer("DM", "Diyorbek Murotov"),
                  transfer("DM", "Diyorbek Murotov"),
                  transfer("DM", "Diyorbek Murotov"),
                ],
              ),
              SizedBox(
                height: _height * 0.05,
              ),
              Container(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Barchasi",
                    style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: _height * 0.08,
              ),
              Container(
                height: _height * 0.08,
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
                        offset: Offset(-4.0, -4.0),
                        spreadRadius: -3,
                        blurRadius: 3,
                        color: Colors.grey),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      "Tabriknoma qo'shish",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    ),
                  Image(image: AssetImage("assets/images/cRD.png",),height: 49,)
                  ],
                ),
              ),
              SizedBox(
                height: _height*0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  transfer2(Icons.wallet_rounded, "Valyuta ayirboshlash"),
                  transfer2(Icons.wallet_rounded, "Valyuta ayirboshlash"),
                  transfer2(Icons.wallet_rounded, "Valyuta ayirboshlash"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget transfer(
    text,
    name,
  ) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.orange,
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: _height * 0.02,
        ),
        Text(
          name,
          style: const TextStyle(
            color: Colors.black,
          ),
        )
      ],
    );
  }
  Widget transfer2(logo,text){
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(5),
      height: _height*0.17,
      width: _width*0.26,
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
              offset: Offset(-4.0, -4.0),
              spreadRadius: -3,
              blurRadius: 3,
              color: Colors.grey),
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(logo,size: 40,color: Colors.lightBlueAccent,),
          Text(text,style: const TextStyle(color: Colors.black,fontSize: 15),)
        ],
      ),
    );
  }
}
