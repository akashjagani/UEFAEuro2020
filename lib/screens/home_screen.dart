import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uefa_euro/components/custom_card.dart';
import 'package:uefa_euro/conts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: kAppBackgroundColor,
      child: buildBody(context),
    );
  }

  Widget buildBody(context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.only(
          left: 15.w,
          right: 15.w,
          top: 10.h,
        ),
        child: Column(
          children: [
            Container(
              height: 220.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kBoxColor,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: Image.asset(
                  'assets/images/banner5.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Live',
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Watch now',
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              height: 180.h,
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
                      height: 100.h,
                      width: 90.w,
                      child: Column(
                        children: [
                          Container(
                            height: 65.h,
                            width: 65.w,
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
                                    fontSize: 15.sp,
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
                        height: 150.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Group D',
                              style: TextStyle(
                                color: kWhiteColor,
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '2',
                                    style: TextStyle(
                                      color: kWhiteColor,
                                      fontSize: 40.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '-',
                                    style: TextStyle(
                                      color: kWhiteColor,
                                      fontSize: 40.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '1',
                                    style: TextStyle(
                                      color: kWhiteColor,
                                      fontSize: 40.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            MaterialButton(
                              onPressed: () {},
                              child: Text(
                                'LIVE 84\'',
                                style: TextStyle(
                                  color: kBottomBarColor,
                                ),
                              ),
                              height: 35.h,
                              minWidth: 90.w,
                              color: kButtonColor,
                              splashColor: kTransparentColor,
                              highlightColor: kTransparentColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100.h,
                      width: 90.w,
                      child: Column(
                        children: [
                          Container(
                            height: 65.h,
                            width: 65.w,
                            decoration: BoxDecoration(
                              color: kBottomBarColor,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/scotlandflag.jpg'),
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
                                    fontSize: 15.sp,
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
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Upcoming',
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'View all',
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Saturday, June 19',
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 18.sp,
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomCard(),
            SizedBox(
              height: 15.h,
            ),
            CustomCard(),
            SizedBox(
              height: 15.h,
            ),
            CustomCard(),
            SizedBox(
              height: 15.h,
            ),
          ],
        ),
      ),
    );
  }
}
