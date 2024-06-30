import 'dart:io';

import 'package:beymen_test_case/common/widgets/extended_image/data/extended_image_type.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';


final class AppExtendedImage extends StatelessWidget {
  AppExtendedImage({
    required this.imageTypeEnum,
    super.key,
    this.imageFile,
    this.imageUrl,
    this.height,
    this.width,
    this.boxFit,
    this.borderRadius,
    this.boxShape,
   required this.context
  });

  final ExtendedImageType imageTypeEnum;
  final File? imageFile;
  final String? imageUrl;
  final double? height;
  final double? width;
  final BoxFit? boxFit;
  final BorderRadius? borderRadius;
  final BoxShape? boxShape;
  final BuildContext context;
  ExtendedImageState? imageState;

  @override
  Widget build(BuildContext context) {
    return _buildExtendedImage;
  }

  Widget get _buildExtendedImage {
    if (imageTypeEnum == ExtendedImageType.Network) {
      return _buildNetworkImage;
    } else if (imageTypeEnum == ExtendedImageType.File && imageFile != null) {
      return _buildFileImage;
    } else if (imageTypeEnum == ExtendedImageType.Asset) {
      return _buildAssetImage;
    } else {
      return const SizedBox();
    }
  }

  Widget get _buildNetworkImage {
    return ExtendedImage.network(
      imageUrl ?? '',
      fit: boxFit ?? BoxFit.cover,
      height: height,
      width: width,
      enableMemoryCache: false,
      cacheWidth: 300 * View.of(context).devicePixelRatio.ceil(),
      cacheMaxAge: const Duration(days: 3),
      clearMemoryCacheWhenDispose: true,
      borderRadius: borderRadius,
      shape: boxShape,
      handleLoadingProgress: true,
      loadStateChanged: (state) {
        if (state.extendedImageLoadState == LoadState.failed) {
          return const SizedBox();
        }
        return null;
      },
      // loadStateChanged: (state) {
      //   imageState = state;
      //   if (state.extendedImageLoadState == LoadState.loading) {
      //     return CircularProgressIndicator();
      //   }
      //   return null;

      //   // else if (state.extendedImageLoadState == LoadState.failed) {
      //   //   if (isProfile ?? false) {
      //   //     return Container(
      //   //       alignment: Alignment.center,
      //   //       clipBehavior: Clip.antiAlias,
      //   //       // height: 35,
      //   //       // width: 35,
      //   //       decoration: BoxDecoration(
      //   //         // shape: BoxShape.circle,
      //   //         border: Border.all(
      //   //           color: AppColor.white,
      //   //           strokeAlign: BorderSide.strokeAlignOutside,
      //   //         ),
      //   //         color: AppColor.organizationCardBackgroundColor,
      //   //       ),
      //   //       child: Text(
      //   //         AppFunctions.getFirstLetterNameAndSurname(fullName ?? ''),
      //   //         style: TextStyle(
      //   //           fontFamily: AppFontFamily.LatoTR.value,
      //   //           fontWeight: AppFontWeight.semiBold.value,
      //   //           fontSize: fullNameFontSize ?? ScreenUtil().setSp(14),
      //   //           color: AppColor.gray500,
      //   //         ),
      //   //       ),
      //   //     );
      //   //   }

      //   //   return ExtendedImageWidget(
      //   //     imageTypeEnum: ExtendedImageType.Asset,
      //   //     isProfile: isProfile,
      //   //     extendImageOnTap: false,
      //   //     onTapImage: onTapImage,
      //   //     imageUrl: emptyImage2,
      //   //   );
      //   // }
      // },
    );
  }

  Widget get _buildFileImage {
    return ExtendedImage.file(
      imageFile!,
      fit: boxFit ?? BoxFit.cover,
      height: height,
      width: width,
      enableMemoryCache: false,
      borderRadius: borderRadius,
      shape: boxShape,
      cacheWidth: 100 * View.of(context).devicePixelRatio.ceil(),
      clearMemoryCacheWhenDispose: true,
      loadStateChanged: (state) {
        if (state.extendedImageLoadState == LoadState.loading) {
          return const CircularProgressIndicator();
        }
        return null;
      },
    );
  }

  Widget get _buildAssetImage {
    return ExtendedImage.asset(
      imageUrl ?? '',
      fit: boxFit ?? BoxFit.cover,
      height: height,
      width: width,
      enableMemoryCache: false,
      cacheWidth: 300 * View.of(context).devicePixelRatio.ceil(),
      clearMemoryCacheWhenDispose: true,
      borderRadius: borderRadius,
      loadStateChanged: (state) {
        if (state.extendedImageLoadState == LoadState.failed) {

        }
        return null;
      },
    );
  }
}
