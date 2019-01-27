import 'package:flutter/material.dart';

class ScaleRoute extends PageRouteBuilder {
  final Widget widget;
  ScaleRoute({this.widget})
      : super(pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return widget;
        }, transitionsBuilder: (BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child) {
          var position = Tween<Offset>(begin: Offset(0, 1), end: Offset(0, 0))
              .animate(animation);
          return SlideTransition(
            position: position,
            child: widget,
            transformHitTests: true,
          );
        });
}
