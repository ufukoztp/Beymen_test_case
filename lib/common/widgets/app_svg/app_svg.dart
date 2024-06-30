import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';



class AppSvgPicture extends StatelessWidget {
  const AppSvgPicture({
    super.key,
    required this.path,
    this.height,
    this.width,
    this.color,
    this.onTap,

  });

  final String path;
  final double? height;
  final double? width;
  final Color? color;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap != null ? onTap!() : null,
      child: SvgPicture.asset(
        path,
        height: height ?? 20.h,
        width: width??20.w,
        color: color,
      ),
    );
  }
}
