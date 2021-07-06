import 'package:flutter/material.dart';
import 'package:uefa_euro/components/custom_card.dart';
import 'package:uefa_euro/conts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({Key key}) : super(key: key);

  @override
  _ResultsScreenState createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  int _selectedIndex = 0;

  _onSelected(int index) {
    setState(() => _selectedIndex = index);
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
          left: 15.w,
          top: 10.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: 15.w,
              ),
              child: Text(
                'Results',
                style: TextStyle(
                  color: kWhiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 35.sp,
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              height: 35.h,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: kMenuButtonList.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => _onSelected(index),
                  child: Padding(
                    padding: EdgeInsets.only(right: index == 4 ? 0 : 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: _selectedIndex != null && _selectedIndex == index
                            ? kSelectedIconColor
                            : kUnSelectedIconColor,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.w),
                          child: Text(
                            '${kMenuButtonList[index]}',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: kBottomBarColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 15.w,
              ),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Friday, June 18',
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: 18.sp,
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
                    Text(
                      'Thursday, June 17',
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: 18.sp,
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
            ),
          ],
        ),
      ),
    );
  }
}
