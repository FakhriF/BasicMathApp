import 'package:basic_math_app/level/penjumlahan/addition_menu_level.dart';
import 'package:basic_math_app/menu/basic_math_menu_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SubstractionMenuLevelPage extends StatefulWidget {
  const SubstractionMenuLevelPage({Key? key}) : super(key: key);

  @override
  State<SubstractionMenuLevelPage> createState() =>
      _SubstractionMenuLevelPageState();
}

class _SubstractionMenuLevelPageState extends State<SubstractionMenuLevelPage> {
  //SpecialLevel
  bool _substractionSpecialLevel10 = false;
  bool _substractionSpecialLevel20 = false;
  bool _substractionSpecialLevel30 = false;
  //Level 30
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
      _level2 = (prefs.getBool('substractionLevel2') ?? false);
      _level3 = (prefs.getBool('substractionLevel3') ?? false);
      _level4 = (prefs.getBool('substractionLevel4') ?? false);
      _level5 = (prefs.getBool('substractionLevel5') ?? false);
      _level6 = (prefs.getBool('substractionLevel6') ?? false);
      _level7 = (prefs.getBool('substractionLevel7') ?? false);
      _level8 = (prefs.getBool('substractionLevel8') ?? false);
      _level9 = (prefs.getBool('substractionLevel9') ?? false);
      _substractionSpecialLevel10 =
          (prefs.getBool('substractionSpecialLevel10') ?? false);
      _level11 = (prefs.getBool('substractionLevel11') ?? false);
      _level12 = (prefs.getBool('substractionLevel12') ?? false);
      _level13 = (prefs.getBool('substractionLevel13') ?? false);
      _level14 = (prefs.getBool('substractionLevel14') ?? false);
      _level15 = (prefs.getBool('substractionLevel15') ?? false);
      _level16 = (prefs.getBool('substractionLevel16') ?? false);
      _level17 = (prefs.getBool('substractionLevel17') ?? false);
      _level18 = (prefs.getBool('substractionLevel18') ?? false);
      _level19 = (prefs.getBool('substractionLevel19') ?? false);
      _substractionSpecialLevel20 =
          (prefs.getBool('substractionSpecialLevel20') ?? false);
      _level21 = (prefs.getBool('substractionLevel21') ?? false);
      _level22 = (prefs.getBool('substractionLevel22') ?? false);
      _level23 = (prefs.getBool('substractionLevel23') ?? false);
      _level24 = (prefs.getBool('substractionLevel24') ?? false);
      _level25 = (prefs.getBool('substractionLevel25') ?? false);
      _level26 = (prefs.getBool('substractionLevel26') ?? false);
      _level27 = (prefs.getBool('substractionLevel27') ?? false);
      _level28 = (prefs.getBool('substractionLevel28') ?? false);
      _level29 = (prefs.getBool('substractionLevel29') ?? false);
      _substractionSpecialLevel30 =
          (prefs.getBool('substractionSpecialLevel30') ?? false);
    });
  }

  Future<void> _resetLevel() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setBool('substractionLevel2', false);
      prefs.setBool('substractionLevel3', false);
      prefs.setBool('substractionLevel4', false);
      prefs.setBool('substractionLevel5', false);
      prefs.setBool('substractionLevel6', false);
      prefs.setBool('substractionLevel7', false);
      prefs.setBool('substractionLevel8', false);
      prefs.setBool('substractionLevel9', false);
      prefs.setBool('substractionSpecialLevel10', false);
      prefs.setBool('substractionLevel11', false);
      prefs.setBool('substractionLevel12', false);
      prefs.setBool('substractionLevel13', false);
      prefs.setBool('substractionLevel14', false);
      prefs.setBool('substractionLevel15', false);
      prefs.setBool('substractionLevel16', false);
      prefs.setBool('substractionLevel17', false);
      prefs.setBool('substractionLevel18', false);
      prefs.setBool('substractionLevel19', false);
      prefs.setBool('substractionSpecialLevel20', false);
      prefs.setBool('substractionLevel21', false);
      prefs.setBool('substractionLevel22', false);
      prefs.setBool('substractionLevel23', false);
      prefs.setBool('substractionLevel24', false);
      prefs.setBool('substractionLevel25', false);
      prefs.setBool('substractionLevel26', false);
      prefs.setBool('substractionLevel27', false);
      prefs.setBool('substractionLevel28', false);
      prefs.setBool('substractionLevel29', false);
      prefs.setBool('substractionSpecialLevel30', false);
    });
  }

  String levelType = "Substraction";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text("BasicMath : Pengurangan"),
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
                  levelBool: _substractionSpecialLevel10,
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
                  levelBool: _substractionSpecialLevel20,
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
                  levelBool: _substractionSpecialLevel30,
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
