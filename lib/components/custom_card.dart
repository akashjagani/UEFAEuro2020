import 'package:flutter/material.dart';
import 'package:uefa_euro/conts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({Key key}) : super(key: key);

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kBoxColor,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 80.h,
              width: 80.w,
              child: Column(
                children: [
                  Container(
                    height: 55.h,
                    width: 55.w,
                    decoration: BoxDecoration(
                      color: kBottomBarColor,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/englandflag.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 90.w,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'England',
                          style: TextStyle(
                            color: kWhiteColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: 80.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sat, Jun 19',
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '9:00 AM',
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'ESPN',
                      style: TextStyle(
                        color: kWhiteColor.withOpacity(0.3),
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 80.h,
              width: 80.w,
              child: Column(
                children: [
                  Container(
                    height: 55.h,
                    width: 55.w,
                    decoration: BoxDecoration(
                      color: kBottomBarColor,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/scotlandflag.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 90.w,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Scotland',
                          style: TextStyle(
                            color: kWhiteColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
