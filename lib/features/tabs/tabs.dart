import 'package:adam/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../Auth/home_login.dart';

class TapsPage extends StatefulWidget {
  int active;
  TapsPage({
    Key? key,
    this.active = 0,
  }) : super(key: key);
  @override
  State<TapsPage> createState() => _TapsPageState();
}

class _TapsPageState extends State<TapsPage> {
  final _pages = [HomePage(), HomePage(), HomePage(), HomePage(), HomeLogin()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[widget.active],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            widget.active = value;
          });
        },
        currentIndex: widget.active,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.redAccent,
        selectedFontSize: 14,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Iconsax.home), label: 'الرئيسية'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.card_tick), label: 'كارتات'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.mobile), label: 'بيع جهازك'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.shopping_bag), label: 'السلة'),
          BottomNavigationBarItem(icon: Icon(Iconsax.user), label: 'الحساب'),
        ],
      ),
    );
  }
}
