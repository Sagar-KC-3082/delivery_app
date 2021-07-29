import 'package:delivery_app/configs/styles/app_colors.dart';
import 'package:delivery_app/configs/styles/custom_text_style.dart';
import 'package:delivery_app/views/home/home_screen.dart';
import 'package:delivery_app/views/notification/notification_main_screen.dart';
import 'package:delivery_app/views/profile/edit_profile.dart';
import 'package:delivery_app/views/profile/profile_mainscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {

  @override
  Widget build(BuildContext context) {

    PersistentTabController _controller = PersistentTabController(initialIndex: 0);

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.home),
          title: "Home",
          inactiveColorSecondary: Colors.white,
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.white,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.notifications_active_outlined),
          title: "Notification",
          inactiveColorSecondary: Colors.white,
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.white,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.person),
          title: "Account",
          inactiveColorSecondary: Colors.white,
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.white,
        ),
      ];
    }

    List<Widget> _buildScreens() {
      return [
        HomeScreen(),
        NotificationScreen(),
        ProfileScreen(),
      ];
    }

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: AppColors.primaryDarkOrange, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: false, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      navBarStyle: NavBarStyle.style8, // Choose the nav bar style with this property.
    );


  }
}
