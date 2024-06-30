
import 'package:beymen_test_case/common/router/app_router.dart';
import 'package:beymen_test_case/core/extensions/sized_box_exxtension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AppBottomSheet {
  static Future<T?> show<T>(
      {required final Widget Function(BuildContext bottomSheetContext) child,
        final String? title,
        final EdgeInsetsGeometry? contentPadding,
        final double? bottomPadding,
        final bool? isFullScreen = false,
        final Color? backgroundColor,
        final Widget? titlePrefix,
        final Widget? titleSuffix,
        final bool? useSafeArea = true,
        required final BuildContext context,
        final EdgeInsetsGeometry? titleMargin}) async {
    return showModalBottomSheet<T>(
      context: context,
      useSafeArea: useSafeArea!,
      isScrollControlled: true,
      isDismissible: true,
      backgroundColor: backgroundColor ?? Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          )),
      builder: (final BuildContext bottomSheetContext) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _bottomSheetHeader(
              title: title,
              titlePrefix: titlePrefix,
              titleSuffix: titleSuffix,
              titleMargin: titleMargin),
          5.h.sbxh,
          _buildBody(
              context: bottomSheetContext,
              child: child(bottomSheetContext),
              bottomPadding: bottomPadding,
              contentPadding: contentPadding,
              isFullScreen: isFullScreen)
        ],
      ),
    );
  }

  static Widget _buildBody({
    required BuildContext context,
    required final Widget child,
    final EdgeInsetsGeometry? contentPadding,
    final double? bottomPadding,
    final bool? isFullScreen,
  }) {
    if (isFullScreen == true) {
      return Expanded(
        child: SingleChildScrollView(
          child: _buildChild(
            context: context,
            child: child,
            bottomPadding: bottomPadding,
            contentPadding: contentPadding,
          ),
        ),
      );
    } else {
      return _buildChild(
        context: context,
        child: child,
        bottomPadding: bottomPadding,
        contentPadding: contentPadding,
      );
    }
  }

  static Widget _bottomSheetHeader(
      {final String? title,
        final Widget? titlePrefix,
        final Widget? titleSuffix,
        final EdgeInsetsGeometry? titleMargin}) {
    return Container(
      margin: titleMargin ??
          EdgeInsets.only(
            top: 12.h,
            right: 16.w,
            left: 16.w,
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              title != null
                  ? titlePrefix ??
               Icon(Icons.chevron_left)
                  : const SizedBox(),
              title != null
                  ? Text(
                title,
              )
                  : const SizedBox(),
              titleSuffix ?? const SizedBox.shrink()

            ],
          ),
        ],
      ),
    );
  }

  static Widget _buildChild({
    required BuildContext context,
    required final Widget child,
    final EdgeInsetsGeometry? contentPadding,
    final double? bottomPadding,
  }) {
    return Padding(
      padding: contentPadding ?? EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          15.0.h.sbxh,
          child,
          SizedBox(
            height: bottomPadding ?? MediaQuery.of(context).padding.bottom,
          )
        ],
      ),
    );
  }
}
