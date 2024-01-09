import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgBookmark1,
      activeIcon: ImageConstant.imgBookmark1,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBookmark1Black900,
      activeIcon: ImageConstant.imgBookmark1Black900,
      title: "lbl_rutas".tr,
      type: BottomBarEnum.Rutas,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBookmark128x40,
      activeIcon: ImageConstant.imgBookmark128x40,
      title: "lbl_courses".tr,
      type: BottomBarEnum.Courses,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavCobrar,
      activeIcon: ImageConstant.imgNavCobrar,
      title: "lbl_cobrar".tr,
      type: BottomBarEnum.Cobrar,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavClientes,
      activeIcon: ImageConstant.imgNavClientes,
      title: "lbl_clientes".tr,
      type: BottomBarEnum.Clientes,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 97.v,
      decoration: BoxDecoration(
        color: appTheme.gray10004,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15.h),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 28.v,
                  width: 40.h,
                  color: appTheme.black900,
                ),
                Text(
                  bottomMenuList[index].title ?? "",
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 10.fSize,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            activeIcon: SizedBox(
              height: 40.v,
              width: 52.h,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 12.h,
                        top: 23.v,
                      ),
                      child: Text(
                        bottomMenuList[index].title ?? "",
                        style: TextStyle(
                          color: appTheme.blueGray800,
                          fontSize: 14.fSize,
                          fontFamily: 'HKGrotesk',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(right: 12.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: bottomMenuList[index].activeIcon,
                            height: 28.v,
                            width: 40.h,
                            color: appTheme.black900,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 7.h,
                              right: 6.h,
                            ),
                            child: Text(
                              "lbl_inicio".tr,
                              style: TextStyle(
                                color: appTheme.black900,
                                fontSize: 10.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Rutas,
  Courses,
  Cobrar,
  Clientes,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
