import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

enum LottieType {
  file,
  asset,
  network,
}

class AppLottieFile extends StatelessWidget {
  AppLottieFile({
    super.key,
    required this.path,
    this.height,
    this.width,
    this.color,
    this.onTap,
    required this.type,
  });

  final String path;
  final double? height;
  final double? width;
  final Color? color;
  LottieType type;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return getBody;
  }

  get getBody {
    switch (type.index) {
      case 0:
        return Lottie.file(File(path));
      case 1:
        return Lottie.asset(path,height: height,width: width);
      case 2:
        return Lottie.network(path);
      default:
        return Lottie.asset(path,height: height,width: width);
    }
  }
}
