import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNav extends StatefulWidget {
  //const BottomNav({Key? key}) : super(key: key);
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _page = 0;
  double selected = 30;
  double notselected = 25;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 50,
      index: _page,
      key: _bottomNavigationKey,
      backgroundColor: Colors.white,
      color: Theme.of(context).primaryColor,
      buttonBackgroundColor: Colors.white,
      items: <Widget>[
        Icon(
          Icons.add_circle_outline_sharp,
          size: _page == 0 ? selected : notselected,
        ),
        Icon(
          Icons.hourglass_empty_sharp,
          size: _page == 1 ? selected : notselected,
        ),
        Icon(
          Icons.account_circle_outlined,
          size: _page == 2 ? selected : notselected,
        ),
        Icon(
          Icons.help_outline_sharp,
          size: _page == 3 ? selected : notselected,
        ),
      ],
      onTap: (index) {
        setState(() {
          _page = index;
        });
      },
    );
  }
}
