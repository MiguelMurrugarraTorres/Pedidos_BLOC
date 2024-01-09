import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 81.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 81.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgGradientnameprimarynamepink300opacity088:
        return Container(
          height: 81.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(1, 0.49),
              end: Alignment(0, 0.49),
              colors: [
                theme.colorScheme.primary,
                theme.colorScheme.secondaryContainer,
                appTheme.pink300.withOpacity(0.88),
              ],
            ),
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgGradientnameprimarynamepink300opacity088,
}
