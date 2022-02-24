import 'package:flutter/material.dart';

enum TabItem { home, search, favorites, profile }

const Map<TabItem, String> tabName= {
  TabItem.home: 'home',
  TabItem.search: 'search',
  TabItem.favorites: 'favorites',
  TabItem.profile: 'profile',
};


const Map<TabItem, String> tabIcon= {
  TabItem.home: 'assets/icons/icon_home.svg',
  TabItem.search: 'assets/icons/icon_search.svg',
  TabItem.favorites: 'assets/icons/icon_favorites.svg',
  TabItem.profile: 'assets/icons/icon_myprofile.png',
};
const Map<TabItem, String> tabActiveIcon= {
  TabItem.home: 'assets/icons/icon_selected_home.svg',
  TabItem.search: 'assets/icons/icon_selected_search.svg',
  TabItem.favorites: 'assets/icons/icon_selected_favorites.svg',
  TabItem.profile: 'assets/icons/icon_selected_myprofile.svg',
};
