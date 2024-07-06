import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:nexteons/global/constants/assets/asset_constants.dart';
import 'package:nexteons/global/dimensions/dimensions.dart';
import 'package:nexteons/global/styles/colors.dart';
import 'package:nexteons/global/styles/textstyles.dart';

class CommonErrorScreen extends StatelessWidget {
  const CommonErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: kWhite,
    body: Column(crossAxisAlignment: CrossAxisAlignment.center,
      children: [ 
        KDimensions().sHeight(ht: 170.h),
        Lottie.asset(error,animate: true,width: 200),
        kHeight50,
      KStyles().semiBold22(text: 'Something went wrong....',color: kBillBlack),
      kHeight10,
      KStyles().med20(text: 'We are working on fixing the problem. \n            Please try again.',color: kTextGrey),
      kHeight50,
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [ 
        Icon(Icons.refresh,color: Colors.blue.shade900,),
        kWidth05,
        KStyles().semiBold20(text: 'Refresh Page',color: Colors.blue.shade900,)
      ],)

      
      ],
    ),);
  }
}