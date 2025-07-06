import 'package:booking_app/screens/account/account.dart';
import 'package:booking_app/screens/home/home.dart';
import 'package:booking_app/screens/notification/notification.dart';
import 'package:booking_app/screens/setting/setting.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentPage = 0;

  final _tabRoutes = [
    HomeScreen(),
    AccountScreen(),
    NotificationScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabRoutes[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        unselectedItemColor: Color(0xFFB9B9B9),
        selectedItemColor: Color(0xFF022E8C),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 0,
        onTap: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/home_icon.svg'),
            activeIcon: SvgPicture.asset(
              'assets/icons/home_icon.svg',
              color: Color(0xFF022E8C),
            ),
            label: 'home'.tr(),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/account_icon.svg'),
            activeIcon: SvgPicture.asset(
              'assets/icons/account_icon.svg',
              color: Color(0xFF022E8C),
            ),
            label: 'account'.tr(),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/notification_bing_icon.svg'),
            activeIcon: SvgPicture.asset(
              'assets/icons/notification_bing_icon.svg',
              color: Color(0xFF022E8C),
            ),
            label: 'notification'.tr(),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/setting_icon.svg'),
            activeIcon: SvgPicture.asset(
              'assets/icons/setting_icon.svg',
              color: Color(0xFF022E8C),
            ),
            label: 'setting'.tr(),
          ),
        ],
      ),
    );
  }
}
