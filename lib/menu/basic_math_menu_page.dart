import 'package:basic_math_app/level/pengurangan/substraction_menu_level.dart';
import 'package:basic_math_app/level/penjumlahan/addition_menu_level.dart';
import 'package:flutter/gestures.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/material.dart';

class MathBasicMenu extends StatefulWidget {
  const MathBasicMenu({Key? key}) : super(key: key);

  @override
  State<MathBasicMenu> createState() => _MathBasicMenuState();
}

class _MathBasicMenuState extends State<MathBasicMenu> {
  @override
  bool _substractionUnlocked = false;
  bool _multiplicationUnlocked = false;
  void initState() {
    super.initState();
    _loadLevel();
  }

  Future<void> _loadLevel() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _substractionUnlocked = (prefs.getBool('additionLevel11') ?? false);
      _multiplicationUnlocked = (prefs.getBool('substractionLevel11') ?? false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("INI CERITANYA MENU UTAMA"),
        ),
        body: Center(
          child: Column(
            children: [
              MenuBar(
                title: "Penjumlahan",
                navPage: const AdditionMenuLevelPage(),
                levelPass: true,
              ),
              MenuBar(
                title: "Pengurangan",
                navPage: const SubstractionMenuLevelPage(),
                levelPass: _substractionUnlocked,
              ),
              MenuBar(
                title: "Perkalian",
                navPage: "-",
                levelPass: _multiplicationUnlocked,
              ),
              MenuBar(
                title: "Pembagian",
                navPage: "-",
                levelPass: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuBar extends StatefulWidget {
  MenuBar({
    required this.title,
    required this.navPage,
    required this.levelPass,
    Key? key,
  }) : super(key: key);
  bool levelPass;
  String title;
  var navPage;

  @override
  State<MenuBar> createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  var levelColorBool;

  @override
  Widget build(BuildContext context) {
    if (widget.title == "Pengurangan" && !widget.levelPass) {
      levelColorBool = Colors.grey;
    } else if (widget.title == "Perkalian" && !widget.levelPass) {
      levelColorBool = Colors.grey;
    } else if (widget.title == "Pembagian" && !widget.levelPass) {
      levelColorBool = Colors.grey;
    } else {
      levelColorBool = Colors.blueAccent;
    }
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: () {
          if (widget.navPage is String) {
            // Navigator.pushNamed(context, navPage);
          } else if (widget.navPage is Widget) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => widget.navPage));
          }
        },
        child: Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: levelColorBool),
          child: Center(
            child: Text(
              widget.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
