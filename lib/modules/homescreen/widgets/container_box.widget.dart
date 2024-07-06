import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexteons/global/dimensions/dimensions.dart';
import 'package:nexteons/global/styles/colors.dart';
import 'package:nexteons/global/styles/textstyles.dart';

class BoxContainer extends StatelessWidget {
  const BoxContainer({super.key,required this.imageText,required this.title});
final String imageText;
final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(height: 50.h,
       
       decoration: BoxDecoration(color: kWhite,
        borderRadius: BorderRadius.circular(10)),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
  
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                kWidth10,
                Image.asset(imageText,height: 30.h,),
                 kWidth10,
            KStyles().med15(text: title,color: kTextGrey),
              ],
            ),
           
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 20,color: Colors.blue.shade900,))
      
          ],
        ),
      
      ),
    );
  }
}