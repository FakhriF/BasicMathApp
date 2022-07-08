import 'package:basic_math_app/level/pengurangan/leveling/substraction_levelSet.dart';
import 'package:basic_math_app/level/penjumlahan/leveling/addition_levelSet.dart';
import 'package:basic_math_app/menu/basic_math_menu_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AdditionMenuLevelPage extends StatefulWidget {
  const AdditionMenuLevelPage({super.key});

  @override
  State<AdditionMenuLevelPage> createState() => _AdditionMenuLevelPageState();
}

class _AdditionMenuLevelPageState extends State<AdditionMenuLevelPage> {
  @override

  //Special Level
  bool _additionSpecialLevel10 = false;
  bool _additionSpecialLevel20 = false;
  bool _additionSpecialLevel30 = false;

  // 30 - 3 level list
  bool _level2 = false;
  bool _level3 = false;
  bool _level4 = false;
  bool _level5 = false;
  bool _level6 = false;
  bool _level7 = false;
  bool _level8 = false;
  bool _level9 = false;
  bool _level11 = false;
  bool _level12 = false;
  bool _level13 = false;
  bool _level14 = false;
  bool _level15 = false;
  bool _level16 = false;
  bool _level17 = false;
  bool _level18 = false;
  bool _level19 = false;
  bool _level21 = false;
  bool _level22 = false;
  bool _level23 = false;
  bool _level24 = false;
  bool _level25 = false;
  bool _level26 = false;
  bool _level27 = false;
  bool _level28 = false;
  bool _level29 = false;

  @override
  void initState() {
    super.initState();
    _loadLevel();
  }

  Future<void> _loadLevel() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _level2 = (prefs.getBool('additionLevel2') ?? false);
      _level3 = (prefs.getBool('additionLevel3') ?? false);
      _level4 = (prefs.getBool('additionLevel4') ?? false);
      _level5 = (prefs.getBool('additionLevel5') ?? false);
      _level6 = (prefs.getBool('additionLevel6') ?? false);
      _level7 = (prefs.getBool('additionLevel7') ?? false);
      _level8 = (prefs.getBool('additionLevel8') ?? false);
      _level9 = (prefs.getBool('additionLevel9') ?? false);
      _additionSpecialLevel10 =
          (prefs.getBool('additionSpecialLevel10') ?? false);
      _level11 = (prefs.getBool('additionLevel11') ?? false);
      _level12 = (prefs.getBool('additionLevel12') ?? false);
      _level13 = (prefs.getBool('additionLevel13') ?? false);
      _level14 = (prefs.getBool('additionLevel14') ?? false);
      _level15 = (prefs.getBool('additionLevel15') ?? false);
      _level16 = (prefs.getBool('additionLevel16') ?? false);
      _level17 = (prefs.getBool('additionLevel17') ?? false);
      _level18 = (prefs.getBool('additionLevel18') ?? false);
      _level19 = (prefs.getBool('additionLevel19') ?? false);
      _additionSpecialLevel20 =
          (prefs.getBool('additionSpecialLevel20') ?? false);
      _level21 = (prefs.getBool('additionLevel21') ?? false);
      _level22 = (prefs.getBool('additionLevel22') ?? false);
      _level23 = (prefs.getBool('additionLevel23') ?? false);
      _level24 = (prefs.getBool('additionLevel24') ?? false);
      _level25 = (prefs.getBool('additionLevel25') ?? false);
      _level26 = (prefs.getBool('additionLevel26') ?? false);
      _level27 = (prefs.getBool('additionLevel27') ?? false);
      _level28 = (prefs.getBool('additionLevel28') ?? false);
      _level29 = (prefs.getBool('additionLevel29') ?? false);
      _additionSpecialLevel30 =
          (prefs.getBool('additionSpecialLevel30') ?? false);
    });
  }

  Future<void> _resetLevel() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setBool('additionLevel2', false);
      prefs.setBool('additionLevel3', false);
      prefs.setBool('additionLevel4', false);
      prefs.setBool('additionLevel5', false);
      prefs.setBool('additionLevel6', false);
      prefs.setBool('additionLevel7', false);
      prefs.setBool('additionLevel8', false);
      prefs.setBool('additionLevel9', false);
      prefs.setBool('additionSpecialLevel10', false);
      prefs.setBool('additionLevel11', false);
      prefs.setBool('additionLevel12', false);
      prefs.setBool('additionLevel13', false);
      prefs.setBool('additionLevel14', false);
      prefs.setBool('additionLevel15', false);
      prefs.setBool('additionLevel16', false);
      prefs.setBool('additionLevel17', false);
      prefs.setBool('additionLevel18', false);
      prefs.setBool('additionLevel19', false);
      prefs.setBool('additionSpecialLevel20', false);
      prefs.setBool('additionLevel21', false);
      prefs.setBool('additionLevel22', false);
      prefs.setBool('additionLevel23', false);
      prefs.setBool('additionLevel24', false);
      prefs.setBool('additionLevel25', false);
      prefs.setBool('additionLevel26', false);
      prefs.setBool('additionLevel27', false);
      prefs.setBool('additionLevel28', false);
      prefs.setBool('additionLevel29', false);
      prefs.setBool('additionSpecialLevel30', false);
    });
  }

  String levelType = "Addition";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text("BasicMath : Penjumlahan"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
            child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Wrap(
              spacing: 50,
              runSpacing: 40,
              alignment: WrapAlignment.center,
              children: [
                LevelMenuWidget(
                  levelBool: true,
                  levelTitle: 1,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level2,
                  levelTitle: 2,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level3,
                  levelTitle: 3,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level4,
                  levelTitle: 4,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level5,
                  levelTitle: 5,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level6,
                  levelTitle: 6,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level7,
                  levelTitle: 7,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level8,
                  levelTitle: 8,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level9,
                  levelTitle: 9,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _additionSpecialLevel10,
                  levelTitle: 10,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level11,
                  levelTitle: 11,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level12,
                  levelTitle: 12,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level13,
                  levelTitle: 13,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level14,
                  levelTitle: 14,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level15,
                  levelTitle: 15,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level16,
                  levelTitle: 16,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level17,
                  levelTitle: 17,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level18,
                  levelTitle: 18,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level19,
                  levelTitle: 19,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _additionSpecialLevel20,
                  levelTitle: 20,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level21,
                  levelTitle: 21,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level22,
                  levelTitle: 22,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level23,
                  levelTitle: 23,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level24,
                  levelTitle: 24,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level25,
                  levelTitle: 25,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level26,
                  levelTitle: 26,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level27,
                  levelTitle: 27,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level28,
                  levelTitle: 28,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _level29,
                  levelTitle: 29,
                  levelType: levelType,
                ),
                LevelMenuWidget(
                  levelBool: _additionSpecialLevel30,
                  levelTitle: 30,
                  levelType: levelType,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MathBasicMenu()),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Center(
                      child: Text(
                        "Menu Utama",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    openAlert();
                  },
                  child: Container(
                    width: 150,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Center(
                      child: Text(
                        "Reset",
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
            const SizedBox(
              height: 50,
            ),
          ],
        )),
      ),
    );
  }

  openAlert() {
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
          backgroundColor: Colors.amber[800],
          // contentPadding: EdgeInsets.only(top: 0),
          content: Container(
            width: 200,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Eh!?\n\nBeneran mau mulai dari awal lagi??\n\nKamu bisa mengulang level lama tanpa reset juga loh!",
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
                backgroundColor: MaterialStateProperty.all(Colors.yellow[800]),
              ),
              child: const Text("Ga Jadi!"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow[800]),
              ),
              child: const Text("Beneran! Gabut Banget Nih!"),
              onPressed: () {
                _resetLevel();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AdditionMenuLevelPage()),
                );
              },
            ),
          ],
        );
      },
    );
  }
}

class LevelMenuWidget extends StatefulWidget {
  LevelMenuWidget({
    required this.levelBool,
    required this.levelTitle,
    required this.levelType,
    Key? key,
  }) : super(key: key);

  bool levelBool;
  int levelTitle;
  String levelType;

  @override
  State<LevelMenuWidget> createState() => _LevelMenuWidgetState();
}

class _LevelMenuWidgetState extends State<LevelMenuWidget> {
  var levelColorBool;

  @override
  Widget build(BuildContext context) {
    if (widget.levelBool == true) {
      levelColorBool = Colors.blue;
    } else {
      levelColorBool = Colors.grey;
    }
    return GestureDetector(
      onTap: () {
        if (widget.levelBool == false) {
        } else if (widget.levelBool == true) {
          if (widget.levelType == "Addition") {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => AdditionLevelSet(
                  levelInt: widget.levelTitle,
                ),
              ),
            );
          } else if (widget.levelType == "Substraction") {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => SubstractionLevelSet(
                  levelInt: widget.levelTitle,
                ),
              ),
            );
          }
        }
        // else {
        //   _setLevel(level: widget.levelTitle);
        // }
      },
      child: Container(
        width: widget.levelTitle == 10 ||
                widget.levelTitle == 20 ||
                widget.levelTitle == 30
            ? 320
            : 75,
        height: widget.levelTitle == 10 ||
                widget.levelTitle == 20 ||
                widget.levelTitle == 30
            ? 75
            : 75,
        decoration: BoxDecoration(
          color: levelColorBool,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            widget.levelTitle.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
