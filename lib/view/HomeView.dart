import 'package:butiquetta_mobile/view/Favorites/Main%20Favorites/FavoritesMain.dart';
import 'package:butiquetta_mobile/view/Home/homePage.dart';
import 'package:butiquetta_mobile/view/Profile/Profile.dart';
import 'package:butiquetta_mobile/view/Search/Search_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HomeView extends StatefulWidget {

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    HomePageScreen(),
    SearchScreen(),
    FavoritesScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      //backgroundColor: Colors.transparent,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar:  Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/icon_home.svg',
                  height: 20,
                  width: 20,),
                activeIcon: SvgPicture.asset('assets/icons/icon_selected_home.svg',
                  height: 20,
                  width: 20,),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/icon_search.svg',
                  height: 20,
                  width: 20,),
                activeIcon: SvgPicture.asset('assets/icons/icon_selected_search.svg',
                  height: 20,
                  width: 20,),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/icon_favorites.svg',
                  height: 20,
                  width: 20,),
                activeIcon: SvgPicture.asset('assets/icons/icon_selected_favorites.svg',
                  height: 20,
                  width: 20,),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                    height: 20,
                    width: 20,
                    child: Image.asset('assets/icons/icon_myprofile.png')),
                activeIcon: SvgPicture.asset('assets/icons/icon_selected_myprofile.svg',
                  height: 20,
                  width: 20,),
                label: '',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),),
    );
  }
}
