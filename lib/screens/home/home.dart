import 'package:booking_app/utils/screen_scaler.dart';
import 'package:booking_app/widgets/Dashboard_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenScaler scaler = ScreenScaler(context);
    return Scaffold(
      appBar: DashboardHeader(
        hasBackgroundImage: true,
        hasSearch: true,
        title: SvgPicture.asset(
          'assets/icons/app_bar_icon.svg',
          width: scaler.scale(128),
          height: scaler.scale(32),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              print('Do something!');
            },
            child: Container(
              width: scaler.moderateScale(36),
              height: scaler.moderateScale(36),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Color(0xFFB9B9B9).withOpacity(0.3),
                borderRadius: BorderRadius.circular(scaler.moderateScale(36)),
              ),
              child: SvgPicture.asset('assets/icons/heart_icon.svg'),
            ),
          ),
          SizedBox(width: scaler.moderateScale(8)),
          GestureDetector(
            onTap: () {
              print('Do something!');
            },
            child: Container(
              width: scaler.moderateScale(36),
              height: scaler.moderateScale(36),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Color(0xFFB9B9B9).withOpacity(0.3),
                borderRadius: BorderRadius.circular(scaler.moderateScale(36)),
              ),
              child: SvgPicture.asset('assets/icons/bag_icon.svg'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: scaler.moderateScale(16),
            vertical: scaler.moderateScale(10),
          ),
          child: Column(
            children: [
              _renderIntroductionImage(context),
              SizedBox(height: scaler.moderateScale(20)),
              _renderIntroduction(context),
              SizedBox(height: scaler.moderateScale(20)),
              _renderProductForYou(context),
              SizedBox(height: scaler.moderateScale(20)),
              _renderVoucher(context),
              SizedBox(height: scaler.moderateScale(20)),
              _renderProductBestSale(context),
              SizedBox(height: scaler.moderateScale(20)),
              _renderProductSuggest(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _renderIntroductionImage(BuildContext context) {
    ScreenScaler scaler = ScreenScaler(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(scaler.moderateScale(12)),
      child: Image.asset(
        'assets/images/hotel_introduction.png',
        width: double.infinity,
        height: scaler.scale(160),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _renderIntroduction(context) {
    ScreenScaler scaler = ScreenScaler(context);
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: scaler.moderateScale(16),
        vertical: scaler.moderateScale(12),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(scaler.moderateScale(12)),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hãy để tôi giúp \nBạn muốn tìm phòng hay đặt vé?',
            style: TextStyle(
              fontSize: scaler.moderateScale(22),
              fontWeight: FontWeight.bold,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: scaler.moderateScale(20),
                    vertical: scaler.moderateScale(8),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF022E8C),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    'Khách sạn & Resort',
                    style: TextStyle(
                      fontSize: scaler.moderateScale(13),
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: scaler.moderateScale(8)),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: scaler.moderateScale(20),
                    vertical: scaler.moderateScale(8),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFB9B9B9).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    'Phòng',
                    style: TextStyle(
                      fontSize: scaler.moderateScale(13),
                      color: Color(0xFF3C3C43).withOpacity(0.6),
                    ),
                  ),
                ),
                SizedBox(width: scaler.moderateScale(8)),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: scaler.moderateScale(20),
                    vertical: scaler.moderateScale(8),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFB9B9B9).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    'Sự kiện',
                    style: TextStyle(
                      fontSize: scaler.moderateScale(13),
                      color: Color(0xFF3C3C43).withOpacity(0.6),
                    ),
                  ),
                ),
                SizedBox(width: scaler.moderateScale(8)),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: scaler.moderateScale(20),
                    vertical: scaler.moderateScale(8),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFB9B9B9).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    'Rạp chiếu phim',
                    style: TextStyle(
                      fontSize: scaler.moderateScale(13),
                      color: Color(0xFF3C3C43).withOpacity(0.6),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderProductForYou(BuildContext context) {
    ScreenScaler scaler = ScreenScaler(context);
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: scaler.moderateScale(12),
        horizontal: scaler.moderateScale(16),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/product_suggest.png'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(scaler.moderateScale(12)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Khách sạn dành cho bạn',
                style: TextStyle(
                  fontSize: scaler.scale(16),
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Xem tất cả',
                style: TextStyle(
                  fontSize: scaler.scale(13),
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: scaler.scale(16)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [1, 2, 3, 4, 5, 6, 7].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Stack(
                      children: [
                        Container(
                          width: scaler.scale(150),
                          height: scaler.scale(188),
                          margin: EdgeInsets.only(
                            right: scaler.moderateScale(8),
                          ),
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/product_suggest_item.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(
                              scaler.moderateScale(12),
                            ),
                          ),
                        ),
                        Container(
                          width: scaler.scale(150),
                          height: scaler.scale(188),
                          margin: EdgeInsets.only(
                            right: scaler.moderateScale(8),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              scaler.moderateScale(12),
                            ),
                            gradient: const LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Colors.black54, Colors.transparent],
                            ),
                          ),
                        ),
                        Positioned(
                          child: SizedBox(
                            width: scaler.scale(150),
                            height: scaler.scale(188),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: scaler.moderateScale(8),
                                    vertical: scaler.moderateScale(3),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      bottomRight: Radius.circular(12),
                                    ),
                                    color: Color(0xFF022E8C),
                                  ),
                                  child: Text(
                                    'Canada',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),

                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: scaler.moderateScale(8),
                                  ).copyWith(bottom: scaler.moderateScale(6)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Khách sạn & Căn hộ The Now Boutique (The Now Boutique Hotel & Apartment)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: scaler.moderateScale(6)),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/icons/location.svg',
                                          ),
                                          SizedBox(
                                            width: scaler.moderateScale(6),
                                          ),
                                          Expanded(
                                            child: Text(
                                              'Phước Mỹ, Đà Nẵng',
                                              style: TextStyle(
                                                fontSize: 11,
                                                color: Colors.white,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: scaler.moderateScale(6)),
                                      Text(
                                        '617.291đ',
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xFFFF3B30),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderVoucher(BuildContext context) {
    ScreenScaler scaler = ScreenScaler(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(scaler.moderateScale(12)),
      child: Image.asset(
        'assets/images/voucher.png',
        width: double.infinity,
        height: scaler.scale(160),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _renderProductBestSale(BuildContext context) {
    ScreenScaler scaler = ScreenScaler(context);
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(scaler.moderateScale(16)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(scaler.moderateScale(12)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Khách sạn tốt nhất',
                style: TextStyle(
                  fontSize: scaler.scale(16),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Xem tất cả', style: TextStyle(fontSize: scaler.scale(13))),
            ],
          ),
          SizedBox(height: scaler.moderateScale(16)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [1, 2, 3, 4, 5, 6, 7, 8, 9].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Stack(
                      children: [
                        Container(
                          width: scaler.scale(150),
                          height: scaler.scale(120),
                          margin: EdgeInsets.only(
                            right: scaler.moderateScale(10),
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/product_best.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(
                              scaler.moderateScale(12),
                            ),
                          ),
                        ),
                        Container(
                          width: scaler.scale(150),
                          height: scaler.scale(120),
                          margin: EdgeInsets.only(
                            right: scaler.moderateScale(10),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              scaler.moderateScale(12),
                            ),
                            gradient: const LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Colors.black54, Colors.transparent],
                            ),
                          ),
                        ),
                        Positioned(
                          width: scaler.scale(150),
                          height: scaler.scale(120),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: scaler.moderateScale(8),
                                  vertical: scaler.moderateScale(3),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFF022E8C),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      scaler.moderateScale(12),
                                    ),
                                    bottomRight: Radius.circular(
                                      scaler.moderateScale(12),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Canada',
                                  style: TextStyle(
                                    fontSize: scaler.moderateScale(11),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: scaler.moderateScale(8),
                                ).copyWith(bottom: scaler.moderateScale(6)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Henry Home - RiverGate Residence',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: scaler.moderateScale(12),
                                        fontWeight: FontWeight.w600,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: scaler.moderateScale(6)),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/location.svg',
                                        ),
                                        SizedBox(
                                          width: scaler.moderateScale(6),
                                        ),
                                        Text(
                                          'Quận 4, Hồ Chí Minh',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: scaler.moderateScale(11),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderProductSuggest(BuildContext context) {
    ScreenScaler scaler = ScreenScaler(context);
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: scaler.moderateScale(16),
        vertical: scaler.moderateScale(12),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Khách sạn gợi ý',
                style: TextStyle(
                  fontSize: scaler.scale(16),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Xem tất cả',
                style: TextStyle(
                  fontSize: scaler.scale(13),
                  color: Color(0xFF022E8C),
                ),
              ),
            ],
          ),
          SizedBox(height: scaler.moderateScale(16)),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 29.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 150 / 204,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFB9B9B9).withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(scaler.moderateScale(12)),
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/product.png',
                          width: double.infinity,
                          height: scaler.scale(120),
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: EdgeInsetsGeometry.symmetric(
                            horizontal: scaler.moderateScale(8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sonnenalp',
                                style: TextStyle(
                                  fontSize: scaler.moderateScale(12),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                '1.600.000đ',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: scaler.moderateScale(11),
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.grey,
                                  decorationThickness: 1.5,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'start',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: scaler.moderateScale(11),
                                    ),
                                  ),
                                  Text(
                                    ' (250)',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: scaler.moderateScale(11),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '12.567.000đ',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: scaler.moderateScale(13),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    ' /đêm',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: scaler.moderateScale(11),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: scaler.moderateScale(8)),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Positioned(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: scaler.moderateScale(8),
                          vertical: scaler.moderateScale(3),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF022E8C),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(scaler.moderateScale(10)),
                            bottomRight: Radius.circular(
                              scaler.moderateScale(12),
                            ),
                          ),
                        ),
                        child: Text(
                          'Canada',
                          style: TextStyle(
                            fontSize: scaler.moderateScale(11),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
