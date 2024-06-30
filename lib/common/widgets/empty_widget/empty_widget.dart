import 'package:beymen_test_case/common/widgets/app_lottie/app_lottie_file.dart';
import 'package:beymen_test_case/common/widgets/app_svg/app_svg.dart';
import 'package:flutter/material.dart';

class EmptyWidget extends StatelessWidget {
   EmptyWidget({super.key,this.text});
  String? text;
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.min,
      children: [
      AppLottieFile(path: "assets/lotties/lottie_empty.json", type: LottieType.asset,),
      Text(text??'Henüz Bir Ürününüz Bulunmamaktadır')
    ],);
  }
}
