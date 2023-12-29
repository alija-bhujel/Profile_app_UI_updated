import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:myprofile/pages/Homepage.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'Homepage',
              baseStyle: TextStyle(),
              selectedStyle: TextStyle()),
          Homepage())
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.white,
      screens: _pages,
      initPositionSelected: 0,
      backgroundColorAppBar: Color.fromARGB(255, 214, 176, 3),
      styleAutoTittleName: GoogleFonts.poppins(fontSize: 18),
    );
  }
}
