import 'package:basic_math_app/level/pengurangan/leveling/substraction_levelSet.dart';
import 'package:basic_math_app/level/pengurangan/substraction_menu_level.dart';
import 'package:basic_math_app/level/penjumlahan/addition_menu_level.dart';
import 'package:basic_math_app/level/penjumlahan/leveling/addition_levelSet.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AdditionLevelTestUI extends StatefulWidget {
  AdditionLevelTestUI(
      {required this.a,
      required this.b,
      required this.levelInt,
      required this.wrongLimit,
      required this.levelType,
      super.key});
  int a;
  int b;
  int levelInt;
  int wrongLimit;
  int wrongCounter = 0;
  String levelType;

  @override
  State<AdditionLevelTestUI> createState() => _AdditionLevelTestUIState();
}

class _AdditionLevelTestUIState extends State<AdditionLevelTestUI> {
  Future<void> _setLevel({required int level}) async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      if (level == 9) {
        prefs.setBool('additionSpecialLevel10', true);
      } else if (level == 19) {
        prefs.setBool('additionSpecialLevel20', true);
      } else if (level == 29) {
        prefs.setBool('additionSpecialLevel30', true);
      } else {
        if (widget.levelType == "Addition") {
          prefs.setBool('additionLevel${level + 1}', true);
        } else if (widget.levelType == "Substraction") {
          prefs.setBool('substractionLevel${level + 1}', true);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Level ${widget.levelInt}"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            if (widget.levelType == "Addition") ...[
              Text(
                "${widget.a.toString()} + ${widget.b.toString()}",
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ] else if (widget.levelType == "Substraction") ...[
              Text(
                "${widget.a.toString()} - ${widget.b.toString()}",
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  if (widget.levelType == "Addition") {
                    if (value == (widget.a + widget.b).toString()) {
                      // print("benar");
                      openAlert(status: "next");
                      _setLevel(level: widget.levelInt);
                    } else {
                      // print("salah");
                      widget.wrongCounter++;
                      if (widget.wrongCounter == 20) {
                        openAlert(status: "refresh");
                        // _setLevel(level: widget.levelInt);
                      }
                    }
                  } else if (widget.levelType == "Substraction") {
                    if (value == (widget.a - widget.b).toString()) {
                      openAlert(status: "next");
                      _setLevel(level: widget.levelInt);
                    } else {
                      widget.wrongCounter++;
                      if (widget.wrongCounter == 20) {
                        openAlert(status: "refresh");
                      }
                    }
                  }
                },
                decoration: const InputDecoration(
                  hintText: "Ketik jawaban disini",
                  labelText: "Jawaban",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AdditionMenuLevelPage()),
                );
              },
              child: Container(
                width: 150,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    "Pilihan Level",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  openAlert({required String status}) {
    if (status == "refresh") {
      return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            backgroundColor: Colors.red[400],
            // contentPadding: EdgeInsets.only(top: 0),
            content: Container(
              width: 200,
              height: 100,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (widget.levelInt != 1) ...[
                      const Text(
                        "Kamu Telah Salah Beberapa Kali!\n\nSilahkan Refresh Soal Untuk Mencoba Soal Yang Berbeda!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ] else ...[
                      const Text(
                        "Emmm, 1 + 1 loh ini...\n\nCoba minum AQUA dulu ya!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ],
                ),
              ),
            ),
            actions: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red[800]),
                ),
                child: const Text("Pilihan Level"),
                onPressed: () {
                  if (widget.levelType == "Addition") {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AdditionMenuLevelPage()),
                    );
                  } else if (widget.levelType == "Substraction") {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const SubstractionMenuLevelPage()),
                    );
                  }
                },
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red[800]),
                ),
                child: const Text("Refresh Soal"),
                onPressed: () {
                  if (widget.levelType == "Addition") {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AdditionLevelSet(
                          levelInt: widget.levelInt,
                        ),
                      ),
                    );
                  } else if (widget.levelType == "Substraction") {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SubstractionLevelSet(
                          levelInt: widget.levelInt,
                        ),
                      ),
                    );
                  }
                },
              ),
            ],
          );
        },
      );
    } else {
      return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            backgroundColor: Colors.green[400],
            // contentPadding: EdgeInsets.only(top: 0),
            content: Container(
              width: 200,
              height: 100,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Kamu Benar!\n\nKamu Lolos ke Level Selanjutnya\n(YAY🎉)",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green[800]),
                ),
                child: const Text("Pilihan Level"),
                onPressed: () {
                  if (widget.levelType == "Addition") {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AdditionMenuLevelPage()),
                    );
                  } else if (widget.levelType == "Substraction") {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const SubstractionMenuLevelPage()),
                    );
                  }
                },
              ),
              ElevatedButton(
                child: const Text("Next"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green[800]),
                ),
                onPressed: () {
                  if (widget.levelType == "Addition") {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AdditionLevelSet(
                          levelInt: widget.levelInt + 1,
                        ),
                      ),
                    );
                  } else if (widget.levelType == "Substraction") {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SubstractionLevelSet(
                          levelInt: widget.levelInt + 1,
                        ),
                      ),
                    );
                  }
                },
              ),
            ],
          );
        },
      );
    }
  }
}
