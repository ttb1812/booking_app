import 'package:booking_app/screens/account/account.dart';
import 'package:booking_app/screens/home/home.dart';
import 'package:booking_app/screens/notification/notification.dart';
import 'package:booking_app/screens/setting/setting.dart';
import 'package:flutter/material.dart';

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
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Tài khoản'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Thông báo'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Cài đặt'),
        ],
      ),
    );
  }
}
