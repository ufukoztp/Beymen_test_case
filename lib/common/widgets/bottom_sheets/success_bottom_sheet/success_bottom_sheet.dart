import 'package:beymen_test_case/common/router/app_router.dart';
import 'package:beymen_test_case/common/widgets/buttons/app_primary_button.dart';
import 'package:beymen_test_case/core/extensions/sized_box_exxtension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SuccessBottomSheetWidget extends StatelessWidget {
  const SuccessBottomSheetWidget({
    super.key,
    this.headerMessage,
    this.bodyMessage,
    this.onLaterPop,
    this.isViewPop = false,
    this.viewPopParameter,
  });
  final String? bodyMessage;
  final String? headerMessage;
  final Function()? onLaterPop;
  final bool? isViewPop;
  final dynamic viewPopParameter;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildInfoImage,
        24.sbxh,
        _buildHeaderMessage,
        _buildBodyMessage,
        24.sbxh,
        _buildFooterButton(context),
        8.h.sbxh,
      ],
    );
  }

  Widget get _buildInfoImage {
    return  Icon(Icons.check,color: Colors.green,size: 100.w,);
  }

  Widget get _buildHeaderMessage {
    return Text(
      headerMessage ?? "",
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
      text: "Kapat",
      onPressed: () {
        Navigator.pop(context);
        if (isViewPop == true) {
          AppRouter.pop(value: viewPopParameter);
        }
        if (onLaterPop != null) {
          onLaterPop!();
        }
        return Future.value();
      },
    );
  }
}
