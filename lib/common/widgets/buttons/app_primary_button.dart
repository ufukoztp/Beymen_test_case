import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class AppPrimaryButton extends StatefulWidget {
  const AppPrimaryButton({
    required this.text,
    super.key,
    this.leading,
    this.trailing,
    this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.width,
    this.height,
  });

  final Future Function()? onPressed;
  final String text;
  final Widget? leading;
  final Widget? trailing;

  final Color? backgroundColor;
  final Color? textColor;
  final double? width;
  final double? height;

  @override
  State<AppPrimaryButton> createState() => _AppPrimaryButtonState();
}

class _AppPrimaryButtonState<T> extends State<AppPrimaryButton> {
  ValueNotifier<bool> loadingNotifier = ValueNotifier(false);
  changeLoading() {
    loadingNotifier.value = !loadingNotifier.value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 56.h,
      child: ValueListenableBuilder(
        valueListenable: loadingNotifier,
        builder: (context, isLoading, child) => MaterialButton(
          height: 0,
          minWidth: 0,
          onPressed: widget.onPressed != null
              ? isLoading
              ? null
              : () async {
            changeLoading();
            await widget.onPressed?.call().onError(
                  (error, stackTrace) {

              },
            );

            changeLoading();
          }
              : null,
          color: widget.backgroundColor ?? Colors.black,
          disabledColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          textColor: Colors.white,
          child: _buildButton(isLoading),
        ),
      ),
    );
  }

  Widget _buildButton(bool value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Visibility(
            visible: value,
            maintainAnimation: true,
            maintainState: true,
            child: const SizedBox.square(
              dimension: 20,
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            )),
        Visibility(
          visible: !value,
          maintainAnimation: true,
          maintainState: true,
          child: Row(
            children: [
              widget.leading ?? const SizedBox.shrink(),
              Text(
                widget.text,

              ),
              widget.trailing ?? const SizedBox.shrink(),
            ],
          ),
        ),
      ],
    );
  }
}
