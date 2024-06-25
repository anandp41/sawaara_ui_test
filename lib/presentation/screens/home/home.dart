import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../core/colors.dart';
import 'individual_meetup.dart/individual_meetup.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static List<PersistentBottomNavBarItem> items = [
    PersistentBottomNavBarItem(
        icon: const Icon(FeatherIcons.home),
        title: 'Home',
        activeColorPrimary: MyColors.highlightBlueColor,
        inactiveColorPrimary: MyColors.darkBlueColor),
    PersistentBottomNavBarItem(
        icon: const Icon(Icons.widgets_outlined),
        title: 'Prolet',
        activeColorPrimary: MyColors.highlightBlueColor,
        inactiveColorPrimary: MyColors.darkBlueColor),
    PersistentBottomNavBarItem(
        icon: const Icon(Icons.handshake_rounded),
        title: 'Meetup',
        activeColorPrimary: MyColors.highlightBlueColor,
        inactiveColorPrimary: MyColors.darkBlueColor),
    PersistentBottomNavBarItem(
        icon: const Icon(FeatherIcons.folder),
        title: 'Explore',
        activeColorPrimary: MyColors.highlightBlueColor,
        inactiveColorPrimary: MyColors.darkBlueColor),
    PersistentBottomNavBarItem(
        icon: const Icon(Icons.person_outline_rounded),
        title: 'Account',
        activeColorPrimary: MyColors.highlightBlueColor,
        inactiveColorPrimary: MyColors.darkBlueColor),
  ];
  int visit = 0;
  List<Widget> pages = [
    const IndividualMeetup(),
    const IndividualMeetup(),
    const IndividualMeetup(),
    const IndividualMeetup(),
    const IndividualMeetup(),
  ];
  late PersistentTabController _controller;

  @override
  void initState() {
    _controller = PersistentTabController(initialIndex: 2);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: pages,
      items: items,
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.linear,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.simple, // Choose the nav bar style with this property.
    );
  }
}
