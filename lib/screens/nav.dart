import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:virtual_id_card/models/virtual_i_d_card_icons.dart';
import 'package:virtual_id_card/screens/screens.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  final List<Widget> _screens = [
    Home(),
    AddCard(),
    HowToUse(),
    About(),
  ];

  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i){
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _screens.length,
        child: Scaffold(
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                )
              ]
            ),
            child: SafeArea(
              child: SalomonBottomBar(
                currentIndex: _selectedTab.index,
                onTap: _handleIndexChanged,
                items: [
                  SalomonBottomBarItem(icon: Icon(VirtualIDCard.home), title: Text('Home', style: TextStyle(fontWeight: FontWeight.w300, fontFamily: 'myriad'),)),
                  SalomonBottomBarItem(icon: Icon(VirtualIDCard.add), title: Text('Add Card', style: TextStyle(fontWeight: FontWeight.w300, fontFamily: 'myriad'))),
                  SalomonBottomBarItem(icon: Icon(VirtualIDCard.how), title: Text('How To Use', style: TextStyle(fontWeight: FontWeight.w300, fontFamily: 'myriad'))),
                  SalomonBottomBarItem(icon: Icon(VirtualIDCard.about), title: Text('About', style: TextStyle(fontWeight: FontWeight.w300, fontFamily: 'myriad'))),
                ],
              ),
            ),
          ),
          body: _screens[_selectedTab.index],
        ),
    );
  }
}

enum _SelectedTab {home, addCard, howToUse, about}