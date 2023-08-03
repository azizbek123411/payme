import 'package:flutter/material.dart';
import 'package:payme/pages/bottom_navbar/bottom_nav_bar.dart';

class ScreenLock extends StatefulWidget {
  static const String id = "lock_screen";

  const ScreenLock({Key? key}) : super(key: key);

  @override
  State<ScreenLock> createState() => _ScreenLockState();
}

class _ScreenLockState extends State<ScreenLock> {
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  var inputText = "";
  var actives = [false, false, false, false, false];
  var clears = [false, false, false, false, false];
  var values = [1, 2, 3, 2, 1];
  var currentIndex = 0;
  var message = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0, actions: [
        TextButton(
          onPressed: () {},
          child: const Text(
            "Skip",
            style: TextStyle(
              letterSpacing: 2,
                color: Color(0xff1FBDBE),
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
        ),
      ]),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
            ),
            const Text(
              "Enter your password",
              style: TextStyle(
                  color: Color(0xff1FBDBE),
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 150,
              // color: Colors.red,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < actives.length; i++)
                      AnimationBox(
                        clear: clears[i],
                        active: actives[i],
                        value: values[i],
                      ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: 0.8 / 0.5),
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.all(4),
                  width: 50,
                  height: 50,
                  child: index == 9
                      ? const SizedBox()
                      : Center(
                          child: MaterialButton(
                            minWidth: 65,
                            height: 65,
                            onPressed: () {
                              if (index == 11) {
                                inputText = inputText.substring(
                                    0, inputText.length - 1);
                                clears = clears.map((e) => false).toList();
                                if (currentIndex >= 0) {
                                  setState(() {
                                    currentIndex--;
                                    clears[currentIndex] = true;
                                    actives[currentIndex] = false;
                                  });
                                } else {
                                  currentIndex = 0;
                                }
                                return;
                                print(inputText);
                              } else {
                                inputText +=
                                    numbers[index == 10 ? index - 1 : index]
                                        .toString();
                              }
                              print(inputText);
                              if (inputText.length == 5) {
                                setState(() {
                                  clears = clears.map((e) => true).toList();
                                  actives = actives.map((e) => false).toList();
                                });
                                if (inputText == "11111") {
                                  print("Succes");
                                  Navigator.pushReplacementNamed(
                                    context,
                                    BottomNavBar.id,
                                  );
                                }
                                inputText = "";
                                currentIndex = 0;
                                return;
                              }
                              clears = clears.map((e) => false).toList();
                              setState(() {
                                actives[currentIndex] = true;
                                currentIndex++;
                              });
                            },
                            color: index==11?Colors.black:const Color(0xff1FBDBE),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: index == 11
                                ? const Icon(
                                    Icons.backspace,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "${numbers[index == 10 ? index - 1 : index]}",
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 21),
                                  ),
                          ),
                        ),
                ),
                itemCount: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimationBox extends StatefulWidget {
  const AnimationBox(
      {Key? key, this.clear = false, this.active = false, this.value})
      : super(key: key);
  final clear;
  final active;
  final value;

  @override
  State<AnimationBox> createState() => _AnimationBoxState();
}

class _AnimationBoxState extends State<AnimationBox>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.clear) {
      animationController.forward(from: 0);
    }
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) => Center(
        child: Stack(
          children: [
            AnimatedContainer(
              margin: const EdgeInsets.all(8.0),
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.active ? const Color(0xff1FBDBE) : Colors.black,
              ),
              duration: const Duration(milliseconds: 300),
            ),
          ],
        ),
      ),
    );
  }
}
