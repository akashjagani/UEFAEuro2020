import 'package:flutter/material.dart';
import 'package:uefa_euro/conts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HighlightsScreen extends StatefulWidget {
  const HighlightsScreen({Key key}) : super(key: key);

  @override
  _HighlightsScreenState createState() => _HighlightsScreenState();
}

class _HighlightsScreenState extends State<HighlightsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppBackgroundColor,
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.only(
          left: 15.w,
          right: 15.w,
          top: 10.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Highlights',
              style: TextStyle(
                color: kWhiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 35.sp,
              ),
            ),
            SizedBox(
              height: 20.h,
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
                  'Collapse',
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
              height: 20.h,
            ),
            Container(
              height: 450.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kBoxColor,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(20.h),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 120.h,
                          width: 90.w,
                          child: Column(
                            children: [
                              Container(
                                height: 80.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                  color: kBottomBarColor,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/englandflag.png'),
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
                            height: 120.h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 30.w),
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
                                SizedBox(
                                  height: 10.h,
                                ),
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
                          height: 120.h,
                          width: 90.w,
                          child: Column(
                            children: [
                              Container(
                                height: 80.h,
                                width: 80.w,
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
                    SizedBox(
                      height: 20.h,
                    ),
                    buildPlayBox(
                      height: 150.h,
                      width: double.infinity,
                      iconSize: 60.h,
                      image: DecorationImage(
                        image: AssetImage('assets/images/banner4.jpg'),
                        fit: BoxFit.cover,
                      ),
                      title: 'Jack Grealish goal (79\')',
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        buildPlayBox(
                          height: 100.h,
                          width: 100.w,
                          iconSize: 40.h,
                          image: DecorationImage(
                            image: AssetImage('assets/images/banner1.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 20.h,
                        ),
                        buildPlayBox(
                          height: 100.h,
                          width: 100.w,
                          iconSize: 40.h,
                          image: DecorationImage(
                            image: AssetImage('assets/images/banner2.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Completed games',
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
              height: 20.h,
            ),
            buildPlayBox(
              height: 200.h,
              width: double.infinity,
              iconSize: 60.h,
              image: DecorationImage(
                image: AssetImage('assets/images/banner2.jpg'),
                fit: BoxFit.cover,
              ),
              title: 'Croatia vs. Czech Republic\n1:18',
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPlayBox({
    double height,
    double width,
    double iconSize,
    DecorationImage image,
    String title,
  }) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: kBottomBarColor,
        borderRadius: BorderRadius.circular(10.r),
        image: image,
      ),
      child: title == null
          ? Center(
              child: Icon(
                Icons.play_arrow_outlined,
                color: kWhiteColor,
                size: iconSize,
              ),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.play_arrow_outlined,
                  color: kWhiteColor,
                  size: iconSize,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.w,
                    bottom: 20.h,
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      '$title',
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: kWhiteColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
