import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexteons/global/constants/assets/asset_constants.dart';
import 'package:nexteons/global/dimensions/dimensions.dart';

import 'package:nexteons/global/styles/textstyles.dart';
import 'package:nexteons/modules/homescreen/widgets/container_box.widget.dart';

import '../../../global/config/config.dart';





class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(backgroundColor: Colors.grey[100],
      appBar: PreferredSize(preferredSize: Size.fromHeight(size.height * 0.13), child: AppBar(backgroundColor: Colors.grey[100],
        title: KStyles().semiBold25
        (text: 'Support',color: Colors.blue.shade900),centerTitle: true, leading:  IconButton(onPressed: (){}, icon:  Icon( Icons.arrow_back,size: 30,color: Colors.blue.shade900,)))),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          kHeight30,
          Center(child: Image.asset(help,width: 200.w,height: 200.h,)),
          kHeight25,
          KStyles().semiBold25(text: 'Hello, How can we help you ?',color: Colors.blue.shade900,
          ),
          KDimensions().sHeight(ht: 90.h),
          BoxContainer(imageText: customerChat, title: 'Contact Live Chat'),
          kHeight15,
          BoxContainer(imageText: email, title: 'Sent us an Email'),
          kHeight15,
          BoxContainer(imageText: faq, title: 'FAQs')
     
        ],
      ),
    );
  }
}