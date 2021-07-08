import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uefa_euro/conts.dart';

class PointTable extends StatefulWidget {
  const PointTable({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PointTableState createState() => _PointTableState();
}

class _PointTableState extends State<PointTable> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 15.w,
      ),
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: kWhiteColor,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30.h,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Club',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 30.h,
                      width: 40.h,
                      child: Center(
                        child: Text(
                          'MP',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 40.w,
                      child: Center(
                        child: Text(
                          'W',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 40.w,
                      child: Center(
                        child: Text(
                          'D',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 40.w,
                      child: Center(
                        child: Text(
                          'L',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 40.w,
                      child: Center(
                        child: Text(
                          'Pts',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              color: kWhiteColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30.h,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Container(
                          height: 30.h,
                          width: 30.h,
                          decoration: BoxDecoration(
                            color: kBottomBarColor,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/englandflag.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'Italy',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 30.h,
                      width: 40.h,
                      child: Center(
                        child: Text(
                          '2',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 40.w,
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 40.w,
                      child: Center(
                        child: Text(
                          '0',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 40.w,
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 40.w,
                      child: Center(
                        child: Text(
                          '4',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30.h,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Container(
                          height: 30.h,
                          width: 30.h,
                          decoration: BoxDecoration(
                            color: kBottomBarColor,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/scotlandflag.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'Italy',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 30.h,
                      width: 40.h,
                      child: Center(
                        child: Text(
                          '2',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 40.w,
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 40.w,
                      child: Center(
                        child: Text(
                          '0',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 40.w,
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 40.w,
                      child: Center(
                        child: Text(
                          '4',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30.h,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Container(
                          height: 30.h,
                          width: 30.h,
                          decoration: BoxDecoration(
                            color: kBottomBarColor,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/englandflag.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'Italy',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 30.h,
                      width: 40.h,
                      child: Center(
                        child: Text(
                          '2',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 40.w,
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 40.w,
                      child: Center(
                        child: Text(
                          '0',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 40.w,
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 40.w,
                      child: Center(
                        child: Text(
                          '4',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30.h,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Container(
                          height: 30.h,
                          width: 30.h,
                          decoration: BoxDecoration(
                            color: kBottomBarColor,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/scotlandflag.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'Italy',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 30.h,
                      width: 40.h,
                      child: Center(
                        child: Text(
                          '2',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 40.w,
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 40.w,
                      child: Center(
                        child: Text(
                          '0',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 40.w,
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 40.w,
                      child: Center(
                        child: Text(
                          '4',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
