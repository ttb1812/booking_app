import 'dart:ui';

import 'package:booking_app/screens/intro_app/intro_step.dart';
import 'package:booking_app/screens/sign_in/sign_in.dart';
import 'package:booking_app/utils/screen_scaler.dart';
import 'package:booking_app/widgets/dashboard_header.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final CarouselSliderController _controller = CarouselSliderController();

  int _current = 1;

  @override
  Widget build(BuildContext context) {
    final ScreenScaler scaler = ScreenScaler(context);
    return Scaffold(
      appBar: DashboardHeader(
        hasBackgroundImage: true,
        hasSearch: false,
        title: SvgPicture.asset(
          'assets/icons/app_bar_icon.svg',
          width: scaler.scale(128),
          height: scaler.scale(32),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //carousel
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: scaler.moderateScale(127)),
                  CarouselSlider(
                    carouselController: _controller,
                    options: CarouselOptions(
                      height: scaler.scale(309),
                      viewportFraction: 1,
                      enableInfiniteScroll: false,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index + 1;
                        });
                      },
                    ),
                    items: [1, 2, 3].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return IntroStep();
                        },
                      );
                    }).toList(),
                  ),
                  SizedBox(height: scaler.moderateScale(30)),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color(0xFFEFEFEF),
                      borderRadius: BorderRadius.circular(99),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [1, 2, 3].map((i) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: scaler.moderateScale(4),
                          ),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            width: scaler.moderateScale(8),
                            height: scaler.moderateScale(8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: i == _current ? Colors.black : Colors.grey,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //footer
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 32,
            ).copyWith(bottom: scaler.bottomSpace),
            width: double.infinity,
            child: FilledButton(
              onPressed: () {
                if (_current != 3) {
                  _controller.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.linear,
                  );
                } else {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),
                  );
                }
              },
              style: FilledButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: Color(0xFF022E8C),
                padding: EdgeInsets.symmetric(vertical: 15),
                elevation: 0,
              ),
              child: Text('Khám phá ngay', style: TextStyle(fontSize: 16)),
            ),
          ),
        ],
      ),
    );
  }
}
