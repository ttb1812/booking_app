import 'package:booking_app/utils/screen_scaler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DashboardHeader extends StatelessWidget implements PreferredSizeWidget {
  final double _baseHeight = 140;
  final bool? hasSearch;
  final bool? hasBackgroundImage;
  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;

  const DashboardHeader({
    super.key,
    this.hasSearch = false,
    this.title,
    this.leading,
    this.actions,
    this.hasBackgroundImage = false,
  });

  @override
  Size get preferredSize => Size.fromHeight(_baseHeight);

  @override
  Widget build(BuildContext context) {
    ScreenScaler scaler = ScreenScaler(context);
    final appBarHeight =
        scaler.verticalScale((hasSearch ?? false) ? 120 : 64) +
        scaler.statusBarHeight;

    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Container(
        height: appBarHeight,
        padding: EdgeInsets.symmetric(
          horizontal: scaler.moderateScale(16),
        ).copyWith(top: scaler.statusBarHeight),
        decoration: BoxDecoration(
          image: hasBackgroundImage ?? false
              ? DecorationImage(
                  image: AssetImage('assets/images/app_bar.png'),
                  fit: BoxFit.cover,
                )
              : null,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(scaler.moderateScale(20)),
            bottomRight: Radius.circular(scaler.moderateScale(20)),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: scaler.moderateScale(16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //leading
                  if (leading != null)
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        width: scaler.moderateScale(32),
                        height: scaler.moderateScale(32),
                        child: leading,
                      ),
                    ),
                  if (actions == null || actions?.length == 1)
                    _emptyView(context),

                  //title
                  ?title,
                  //actions
                  Row(
                    children: [
                      if (actions == null) _emptyView(context),
                      ...?actions,
                    ],
                  ),
                ],
              ),
            ),

            //search
            if (hasSearch == true)
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: scaler.moderateScale(7),
                  horizontal: scaler.moderateScale(8),
                ),
                margin: EdgeInsets.only(bottom: scaler.moderateScale(10)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: scaler.moderateScale(10)),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Tìm kiếm..',
                          contentPadding: EdgeInsets.zero,
                          isDense: true,
                        ),
                      ),
                    ),
                    SizedBox(width: scaler.moderateScale(10)),
                    GestureDetector(child: Icon(Icons.mic)),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _emptyView(BuildContext context) {
    ScreenScaler scaler = ScreenScaler(context);
    return SizedBox(
      width: scaler.moderateScale(32),
      height: scaler.moderateScale(32),
    );
  }
}
