import 'package:booking_app/utils/screen_scaler.dart';
import 'package:flutter/material.dart';

class IntroStep extends StatelessWidget {
  const IntroStep({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenScaler scaler = ScreenScaler(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: scaler.scale(32)),
      child: Column(
        children: [
          Image.asset(
            'assets/images/step_one.png',
            height: scaler.scale(172),
            width: scaler.scale(227),
            fit: BoxFit.cover,
          ),
          Text(
            'Nền tảng đặt vé & Thương mại điện tử',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: scaler.scale(28),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: scaler.scale(8)),
          Text(
            'Đa dạng loại hình dịch vụ, sự kiện, giải trí, thể thao đỉnh cao.',
            style: TextStyle(fontSize: scaler.scale(15)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
