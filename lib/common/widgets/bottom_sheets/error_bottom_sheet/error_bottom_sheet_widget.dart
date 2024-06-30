

import 'package:beymen_test_case/common/widgets/buttons/app_primary_button.dart';
import 'package:beymen_test_case/core/extensions/sized_box_exxtension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ErrorBottomSheetWidget extends StatelessWidget {
  const ErrorBottomSheetWidget(
      {super.key,
        this.headerMessage,
        this.bodyMessage,});
  final String? bodyMessage;
  final String? headerMessage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildInfoImage,
          24.h.sbxh,
          _buildHeaderMessage,
          _buildBodyMessage,
          24.h.sbxh,
          _buildFooterButton(context),
          8.h.sbxh,
        ],
      ),
    );
  }

  Widget get _buildInfoImage {
    return const Icon(Icons.error,size: 30,);
  }

  Widget get _buildHeaderMessage {
    return Text(
      headerMessage ?? "Hata",
      textAlign: TextAlign.center,
    );
  }

  Widget get _buildBodyMessage {
    return bodyMessage != null
        ? Column(
      children: [
        24.sbxh,
        Text(
          bodyMessage ?? '',
          textAlign: TextAlign.center,
        ),
      ],
    )
        : const SizedBox();
  }

  Widget _buildFooterButton(BuildContext context) {
    return AppPrimaryButton(
      text:"Kapat",
      onPressed: () async => Navigator.pop(context),
    );
  }
}
