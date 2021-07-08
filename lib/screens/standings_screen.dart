import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uefa_euro/components/point_table.dart';
import 'package:uefa_euro/conts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StandingsScreen extends StatefulWidget {
  const StandingsScreen({Key key}) : super(key: key);

  @override
  _StandingsScreenState createState() => _StandingsScreenState();
}

class _StandingsScreenState extends State<StandingsScreen> {
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
                'Standings',
                style: TextStyle(
                  color: kWhiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 35.sp,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
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
                      child: Center(
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
              height: 20.h,
            ),
            PointTable(
              title: 'Group A',
            ),
            SizedBox(
              height: 50.h,
            ),
            PointTable(
              title: 'Group B',
            ),
            SizedBox(
              height: 50.h,
            ),
            PointTable(
              title: 'Group C',
            ),
            SizedBox(
              height: 50.h,
            ),
            PointTable(
              title: 'Group D',
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
