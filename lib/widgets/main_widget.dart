import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sales_power/widgets/menu_icon_icons.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(
              Icons.menu,
            ),
          ),
          body: Center(
            child: Text(
              'Orders',
              style: TextStyle(fontSize: 30),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(items: [
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
