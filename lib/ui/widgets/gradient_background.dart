import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(),
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xfff5f5f5),
            Get.theme.primaryColorLight,
          ],
        )),
        child: child);
  }
}
