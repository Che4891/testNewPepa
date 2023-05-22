import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sales_power/widgets/menu_icon_icons.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  int _selectIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Angebote',
    ),
    Text(
      'Bestellungen',
    ),
    Text(
      'Transaktionen',
    ),
  ];

  void onSelectTab(int index) {
    if (_selectIndex == index) return;
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Scaffold(
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: SvgPicture.asset(
                  "assets/images/logo.svg", width: 110, //asset location
                ),
              ),
            ),
          ),
          body: Center(
            child: _widgetOptions[_selectIndex],
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: _selectIndex,
              onTap: onSelectTab,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(MenuIcon.quotes), label: 'Angebote'),
                BottomNavigationBarItem(
                    icon: Icon(MenuIcon.orders), label: 'Bestellungen'),
                BottomNavigationBarItem(
                    icon: Icon(MenuIcon.transaction), label: 'Transaktionen'),
              ]),
        ),
      ),
    );
  }
}
