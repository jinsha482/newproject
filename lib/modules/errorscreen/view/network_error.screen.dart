import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import 'package:nexteons/global/constants/assets/asset_constants.dart';

import 'package:nexteons/global/dimensions/dimensions.dart';
import 'package:nexteons/global/styles/colors.dart';
import 'package:nexteons/global/styles/textstyles.dart';

class NetworkErrorScreen extends StatelessWidget {
  const NetworkErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: kWhite,
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         KDimensions().sHeight(ht: 100.h),
         Lottie.asset(network,animate: true),
          Center(child: KStyles().semiBold22(text: 'No Signal',color: kBlack)),
          kHeight10,
         Center(child: KStyles().semiBold20(text: ' No internet connection \n     Please try again',color : kTextGrey)),
        KDimensions().sHeight(ht: 70.h),
         SizedBox(width: 330.w,
           child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:  Colors.blue.shade900),
            onPressed: (){}, child: KStyles().semiBold20(text: 'Retry',color: kWhite)),
         )
        ],
      ),
    ),);
  }
}