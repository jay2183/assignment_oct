import 'package:assignment_oct/app/core/constants/text_style.dart';
import 'package:assignment_oct/app/models/galary_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/formator/get_value_k.dart';
import '../../../../../core/widgets/leftTitleWidget.dart';
import '../controller/controller.dart';

class GalaryScreen extends StatelessWidget {
  GalaryScreen({super.key});
  final _controller = Get.put(GalaryController());
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            topLeftTitle(title: "Galary"),
            SizedBox(
              height: 10.h,
            ),
            Expanded(child: Obx(() {
              bool loading = _controller.isLoading.value;
              GalaryModel obj = _controller.galaryModel.value;

              GalaryModel galaryModel = _controller.galaryModel.value;

              return loading
                  ? const Center(
                      child: CircularProgressIndicator(
                      color: Colors.cyan,
                    ))
                  : obj.hits == null
                      ? Center(
                          child: Text(
                          "No Image Found",
                          style: applyFontStyle(
                              color: Colors.cyan,
                              fontSize: 20.sp,
                              fontweight: FontWeight.w600),
                        ))
                      : GridView.builder(
                          padding: EdgeInsets.symmetric(vertical: 20.h),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:
                                s.width < 500 ? 1 : (s.width / 400).round(),
                            mainAxisSpacing: 20.h,
                            crossAxisSpacing: 20.w,
                          ),
                          itemCount: galaryModel.hits!.length,
                          itemBuilder: (BuildContext context, int index) =>
                              LayoutBuilder(builder: (context, constraints) {
                            Hit object = galaryModel.hits![index];

                            return InkWell(
                              onTap: () {},
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
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  '${object.largeImageUrl}'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.all(10.r),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Expanded(
                                                          child: Column(
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .visibility_outlined,
                                                                size: 24.sp,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              SizedBox(
                                                                height: 4.h,
                                                              ),
                                                              Text(
                                                                FormateInKmb
                                                                    .formatValue(object
                                                                        .views!
                                                                        .toInt()),
                                                                maxLines: 1,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: applyFontStyle(
                                                                    fontSize:
                                                                        14.sp,
                                                                    color: Colors
                                                                        .white,
                                                                    fontweight:
                                                                        FontWeight
                                                                            .bold,
                                                                    laterSpace:
                                                                        2.w),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Column(
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .thumb_up_outlined,
                                                                size: 24.sp,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              SizedBox(
                                                                height: 4.h,
                                                              ),
                                                              Text(
                                                                FormateInKmb
                                                                    .formatValue(object
                                                                        .likes!
                                                                        .toInt()),
                                                                maxLines: 1,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: applyFontStyle(
                                                                    fontSize:
                                                                        14.sp,
                                                                    color: Colors
                                                                        .white,
                                                                    fontweight:
                                                                        FontWeight
                                                                            .bold,
                                                                    laterSpace:
                                                                        2.w),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Column(
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .comment_outlined,
                                                                size: 24.sp,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              SizedBox(
                                                                height: 4.h,
                                                              ),
                                                              Text(
                                                                FormateInKmb
                                                                    .formatValue(object
                                                                        .comments!
                                                                        .toInt()),
                                                                maxLines: 1,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: applyFontStyle(
                                                                    fontSize:
                                                                        14.sp,
                                                                    color: Colors
                                                                        .white,
                                                                    fontweight:
                                                                        FontWeight
                                                                            .bold,
                                                                    laterSpace:
                                                                        2.w),
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
                        );
            }))
          ],
        ),
      ),
    );
  }
}
