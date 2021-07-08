import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uefa_euro/conts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({Key key}) : super(key: key);

  @override
  _CalenderScreenState createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

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
          top: 10.h,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 15.w,
                right: 15.w,
              ),
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
                              height: 90.h,
                              width: 90.w,
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
                            Container(
                              height: 30.h,
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
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 140.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Group Stage - Matchday 2 of 3',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: kWhiteColor,
                                  fontSize: 14.sp,
                                ),
                              ),
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
                              height: 90.h,
                              width: 90.w,
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
                            Container(
                              height: 30.h,
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
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'R. Sterling 64\'',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: kWhiteColor,
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            'J. Grealish 79\'',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: kWhiteColor,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'O. McBurnie 41\'',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: kWhiteColor,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
            DefaultTabController(
              length: 4,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.w,
                      right: 15.w,
                    ),
                    child: TabBar(
                      unselectedLabelColor: kWhiteColor,
                      labelColor: kButtonColor,
                      indicatorColor: kButtonColor,
                      tabs: [
                        Tab(
                          child: Text(
                            'Summary',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Stats',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Lineups',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Highlights',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                      controller: _tabController,
                      indicatorSize: TabBarIndicatorSize.tab,
                    ),
                  ),
                  Container(
                    height: 2.h,
                    width: double.infinity,
                    color: kUnSelectedIconColor,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.w,
                      right: 15.w,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '64%',
                              style: TextStyle(
                                color: kWhiteColor,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Ball possession',
                              style: TextStyle(
                                color: kWhiteColor,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '36%',
                              style: TextStyle(
                                color: kWhiteColor,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 6.h,
                                decoration: BoxDecoration(
                                  color: kRedColor,
                                  borderRadius: BorderRadius.circular(30.r),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 6.h,
                                      width: 60.w,
                                      decoration: BoxDecoration(
                                        color: kWhiteColor,
                                        borderRadius:
                                            BorderRadius.circular(30.r),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: Container(
                                height: 6.h,
                                decoration: BoxDecoration(
                                  color: kWhiteColor,
                                  borderRadius: BorderRadius.circular(30.r),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 6.h,
                                      width: 100.w,
                                      decoration: BoxDecoration(
                                        color: kBlueColor,
                                        borderRadius:
                                            BorderRadius.circular(30.r),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '74%',
                              style: TextStyle(
                                color: kWhiteColor,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Pass accuracy',
                              style: TextStyle(
                                color: kWhiteColor,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '71%',
                              style: TextStyle(
                                color: kWhiteColor,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 6.h,
                                decoration: BoxDecoration(
                                  color: kRedColor,
                                  borderRadius: BorderRadius.circular(30.r),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 6.h,
                                      width: 50.w,
                                      decoration: BoxDecoration(
                                        color: kWhiteColor,
                                        borderRadius:
                                            BorderRadius.circular(30.r),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: Container(
                                height: 6.h,
                                decoration: BoxDecoration(
                                  color: kWhiteColor,
                                  borderRadius: BorderRadius.circular(30.r),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 6.h,
                                      width: 90.w,
                                      decoration: BoxDecoration(
                                        color: kBlueColor,
                                        borderRadius:
                                            BorderRadius.circular(30.r),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        ListView.builder(
                          itemCount: kRedButtonPointList.length,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.only(
                                bottom: index == kRedButtonPointList.length - 1
                                    ? 0
                                    : 20.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 40.h,
                                  width: 50.w,
                                  decoration: BoxDecoration(
                                    color: kRedColor,
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '${kRedButtonPointList[index]}',
                                      style: TextStyle(
                                        color: kWhiteColor,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  '${kButtonTextPointList[index]}',
                                  style: TextStyle(
                                    color: kWhiteColor,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Container(
                                  height: 40.h,
                                  width: 50.w,
                                  decoration: BoxDecoration(
                                    color: kBlueColor,
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '${kBlueButtonPointList[index]}',
                                      style: TextStyle(
                                        color: kWhiteColor,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
          ],
        ),
      ),
    );
  }
}
