import 'package:assignment_oct/app/core/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/leftTitleWidget.dart';

class GalaryScreen extends StatelessWidget {
  const GalaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(children: [
          SizedBox(height: 30.h,),
          topLeftTitle(title: "Galary"),
          SizedBox(height: 20.h,),
          Expanded(child: 
          GridView.builder(
        padding:  EdgeInsets.all(20.r),
        shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: s.width < 500 ? 1 : (s.width / 400).round(),
          mainAxisSpacing: 20.h,
          crossAxisSpacing: 20.w,
          // childAspectRatio: AppResponsive.isMobile(context) ? 1.2 : 1.2,
          // height: 350,
        ),
        itemCount: 40,
        itemBuilder: (BuildContext context, int index) => LayoutBuilder(builder: (context, constraints) {
          // Duration duration =const Duration(seconds: 4);

          return InkWell(
            onTap: () async {
              
            },
            child: Stack(
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(children: [
                    AspectRatio(
                      aspectRatio: 16.0.w / 12.0.w,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // color: Colors.red,
                          image:const DecorationImage(
                            image: NetworkImage('https://cdn.pixabay.com/photo/2014/06/03/19/38/board-361516_640.jpg'),
                            fit: BoxFit.contain,
                          ),
                        ),
                       
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:  EdgeInsets.all(10.r),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           
                            
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Icon(Icons.visibility_outlined,size: 24.sp,color: Colors.white,),
                                            SizedBox(height: 4.h,),
                                            Text(
                                              '100k',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: applyFontStyle(fontSize: 14.sp,color: Colors.white,fontweight: FontWeight.bold,laterSpace: 2.w),
                                             
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Icon(Icons.thumb_up_outlined,size: 24.sp,color: Colors.white,),
                                            SizedBox(height: 4.h,),
                                            Text(
                                              '50k',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: applyFontStyle(fontSize: 14.sp,color: Colors.white,fontweight: FontWeight.bold,laterSpace: 2.w),
                                             
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                 
                                
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          );
        }),
      ))

        
        ],),
      ),
    );
  }
}