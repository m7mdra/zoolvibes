import 'package:flutter/material.dart';
class FlatAppBar extends AppBar {
  final  automaticallyImplyLeading;
  final  leading;
  final  title;
  final  actions;
  final  flexibleSpace;
  final  bottom;
  final  backgroundColor;
  final  brightness;
  final  iconTheme;
  final  textTheme;
  final  primary;
  final  centerTitle;
  final  titleSpacing;
  final  toolbarOpacity;
  final  bottomOpacity;

  FlatAppBar({
    Key key,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.title,
    this.actions,
    this.flexibleSpace,
    this.bottom,
    this.backgroundColor,
    this.brightness,
    this.iconTheme,
    this.textTheme,
    this.primary = true,
    this.centerTitle,
    this.titleSpacing = NavigationToolbar.kMiddleSpacing,
    this.toolbarOpacity = 1.0,
    this.bottomOpacity = 1.0,
  }) : super(
            key: key,
            leading: leading,
            automaticallyImplyLeading: automaticallyImplyLeading,
            title: title,
            actions: actions,
            elevation: 0,
            flexibleSpace: flexibleSpace,
            bottom: bottom,
            backgroundColor: backgroundColor,
            brightness: brightness,
            iconTheme: iconTheme,
            textTheme: textTheme,
            primary: primary,
            centerTitle: centerTitle,
            titleSpacing: titleSpacing,
            toolbarOpacity: toolbarOpacity,
            bottomOpacity: bottomOpacity);
}
