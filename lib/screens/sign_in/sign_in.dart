import 'package:booking_app/screens/main/main.dart';
import 'package:booking_app/screens/sign_up/sign_up.dart';
import 'package:booking_app/utils/screen_scaler.dart';
import 'package:booking_app/widgets/dashboard_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenScaler scaler = ScreenScaler(context);

    void onSigninPressed() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainScreen()),
      );
    }

    void onSignUpPressed() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignUp()),
      );
    }

    return Scaffold(
      appBar: DashboardHeader(
        title: SvgPicture.asset(
          'assets/icons/app_bar_icon.svg',
          width: scaler.scale(128),
          height: scaler.scale(32),
        ),
        hasBackgroundImage: true,
      ),
      backgroundColor: Color(0xFFF2F2F7),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: scaler.moderateScale(16))
              .copyWith(
                top: scaler.moderateScale(20),
                bottom: scaler.moderateScale(scaler.bottomSpace.toInt() + 16),
              ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: scaler.moderateScale(16),
              vertical: scaler.moderateScale(12),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: scaler.moderateScale(9),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Đăng nhập để trải nghiệm',
                        style: TextStyle(
                          fontSize: scaler.moderateScale(22),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: scaler.moderateScale(12)),
                      Text(
                        'Đa dạng loại hình dịch vụ, sự kiện, giải trí, thể thao đỉnh cao.',
                        style: TextStyle(fontSize: scaler.moderateScale(15)),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: scaler.moderateScale(28)),
                Text(
                  'Đăng nhập bằng',
                  style: TextStyle(
                    fontSize: scaler.moderateScale(13),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: scaler.moderateScale(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //google
                      GestureDetector(
                        onTap: () {
                          print('Press button!');
                        },
                        child: Container(
                          width: scaler.moderateScale(50),
                          height: scaler.moderateScale(50),
                          padding: EdgeInsets.all(scaler.moderateScale(13)),
                          decoration: BoxDecoration(
                            color: Color(0xFFB9B9B9).withOpacity(0.3),
                            borderRadius: BorderRadius.circular(
                              scaler.moderateScale(10),
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/google.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      //facebook
                      SizedBox(width: scaler.moderateScale(16)),
                      GestureDetector(
                        onTap: () {
                          print('Press button!');
                        },
                        child: Container(
                          width: scaler.moderateScale(50),
                          height: scaler.moderateScale(50),
                          padding: EdgeInsets.all(scaler.moderateScale(13)),
                          decoration: BoxDecoration(
                            color: Color(0xFFB9B9B9).withOpacity(0.3),
                            borderRadius: BorderRadius.circular(
                              scaler.moderateScale(10),
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/facebook.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      //apple
                      SizedBox(width: scaler.moderateScale(16)),
                      GestureDetector(
                        onTap: () {
                          print('Press button!');
                        },
                        child: Container(
                          width: scaler.moderateScale(50),
                          height: scaler.moderateScale(50),
                          padding: EdgeInsets.all(scaler.moderateScale(13)),
                          decoration: BoxDecoration(
                            color: Color(0xFFB9B9B9).withOpacity(0.3),
                            borderRadius: BorderRadius.circular(
                              scaler.moderateScale(10),
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/apple.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Hoặc',
                  style: TextStyle(
                    fontSize: scaler.moderateScale(13),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                _line(context),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email hoặc số điện thoại',
                      style: TextStyle(fontSize: scaler.moderateScale(13)),
                    ),
                    SizedBox(height: scaler.moderateScale(16)),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Nhập email hoặc số điện thoại',
                      ),
                    ),
                    SizedBox(height: scaler.moderateScale(16)),
                    Text(
                      'Mật khẩu',
                      style: TextStyle(fontSize: scaler.moderateScale(13)),
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: 'Nhập mật khẩu'),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: scaler.moderateScale(16),
                    bottom: scaler.moderateScale(8),
                  ),
                  width: double.infinity,
                  height: 50,
                  child: FilledButton(
                    onPressed: onSigninPressed,
                    child: Text(
                      'Đăng nhập',
                      style: TextStyle(fontSize: scaler.moderateScale(15)),
                    ),
                    style: FilledButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          scaler.moderateScale(12),
                        ),
                      ),
                      backgroundColor: Color(0xFF022E8C),
                    ),
                  ),
                ),
                _line(context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Bạn chưa có tài khoản? ',
                      style: TextStyle(fontSize: scaler.moderateScale(13)),
                    ),
                    GestureDetector(
                      onTap: onSignUpPressed,
                      child: Text(
                        'Đăng ký ngay',
                        style: TextStyle(
                          fontSize: scaler.moderateScale(13),
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF022E8C),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: scaler.moderateScale(16)),
                Text(
                  'Quên mật khẩu?',
                  style: TextStyle(
                    fontSize: scaler.moderateScale(13),
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF022E8C),
                  ),
                ),
                _line(context),
                Text(
                  'Bằng việc đăng ký, bạn đã đồng ý với',
                  style: TextStyle(fontSize: scaler.moderateScale(13)),
                ),
                Text(
                  'Điều khoản dịch vụ & Chính sách Riêng tư của Sitdown',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: scaler.moderateScale(13),
                    color: Color(0xFF022E8C),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _line(BuildContext context) {
    ScreenScaler scaler = ScreenScaler(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: scaler.moderateScale(16)),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color(0xFFB9B9B9).withOpacity(0.3),
          ),
        ),
      ),
    );
  }
}
