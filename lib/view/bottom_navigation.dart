
import 'package:butiquetta_mobile/view/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class BottomNavigationWidget extends StatefulWidget {
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;
  const BottomNavigationWidget({ required this.currentTab,  required this.onSelectTab});

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            ),
            child: ClipRRect(
            borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
        ),
        child:BottomNavigationBar(
          backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      items: [
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
      onTap: (index) => widget.onSelectTab(
        TabItem.values[index],
      ),
      currentIndex: widget.currentTab.index,
    )));
  }


}
