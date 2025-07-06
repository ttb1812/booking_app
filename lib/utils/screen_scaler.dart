import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class ScreenScaler {
  final int _designWidth = 393;
  final int _designHeight = 848;
  final int _minWidth = 397;
  final double _factor = Platform.isIOS ? 0.5 : 0.7;
  late final double _currentWidth;
  late final double _currentHeight;
  late final double _statusBarHeight;
  late final double _bottomSpace;

  ScreenScaler(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    _currentWidth = mediaQueryData.size.width;
    _currentHeight = mediaQueryData.size.height;
    _statusBarHeight = mediaQueryData.padding.top;
    _bottomSpace = mediaQueryData.padding.bottom;
  }

  // scaledSize.scale(10) Responsive by width screen. (Image Size)
  double scale(int size) {
    return (_currentWidth / _designWidth) * size;
  }

  //scaledSize.verticalScale(10) Responsive by height screen
  double verticalScale(int size) {
    if (_minWidth > _currentWidth) {
      return scale(size);
    }
    return (_currentHeight / _designHeight) * size;
  }

  //scaledSize.moderateScale(10) Responsive for padding - margin - fontSize.
  double moderateScale(int size) {
    return size + (scale(size) - size) * _factor;
  }

  get deviceWidth {
    return _currentWidth;
  }

  get deviceHeight {
    return _currentHeight;
  }

  get statusBarHeight {
    return _statusBarHeight;
  }

  get bottomSpace {
    if (_bottomSpace == 0.0) {
      return 16.0;
    }
    return _bottomSpace;
  }
}
