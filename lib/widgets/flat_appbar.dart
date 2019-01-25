import 'package:flutter/material.dart';

class FlatAppBar extends AppBar {
  var leading;
  var automaticallyImplyLeading;
  var title;
  var actions;
  var flexibleSpace;
  var bottom;
  var backgroundColor;
  var brightness;
  var iconTheme;
  var textTheme;
  var primary;
  var centerTitle;
  var titleSpacing;
  var toolbarOpacity;
  var bottomOpacity;

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
