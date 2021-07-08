import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uefa_euro/conts.dart';
import 'package:uefa_euro/screens/calender_screen.dart';
import 'package:uefa_euro/screens/highlights_screen.dart';
import 'package:uefa_euro/screens/home_screen.dart';
import 'package:uefa_euro/screens/results_screen.dart';
import 'package:uefa_euro/screens/standings_screen.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  int _selectedIndex = 0;

  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        backgroundColor: kAppBackgroundColor,
        appBar: buildAppBar(
          context,
          () {
            _globalKey.currentState.openDrawer();
          },
        ),
        drawer: buildDrawer(),
        body: IndexedStack(
          index: _selectedIndex,
          children: [
            HomeScreen(),
            ResultsScreen(),
            CalenderScreen(),
            StandingsScreen(),
            HighlightsScreen(),
          ],
        ),
        bottomNavigationBar: buildBottomNavigationBar(),
      ),
    );
  }

  Widget buildDrawer() {
    return Drawer(
      child: Container(
        color: kAppBackgroundColor,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.h,
              ),
              CircleAvatar(
                radius: 50.r,
                backgroundColor: kBoxColor,
                backgroundImage: AssetImage('assets/images/englandflag.png'),
              ),
              SizedBox(
                height: 50.h,
              ),
              ListView.builder(
                itemCount: kDrawerItemList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Column(
                  children: [
                    Text(
                      '${kDrawerItemList[index]}',
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Divider(
                      color: kUnSelectedIconColor,
                      height: 50.h,
                      indent: 30.w,
                      endIndent: 30.w,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize buildAppBar(context, onTap) {
    return PreferredSize(
      preferredSize: Size.fromHeight(100.h),
      child: Padding(
        padding: EdgeInsets.only(
          left: 15.w,
          right: 15.w,
          top: 15.h,
          bottom: 15.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkResponse(
              onTap: onTap,
              highlightColor: kTransparentColor,
              splashColor: kTransparentColor,
              child: Image.asset(
                'assets/icons/menu.png',
                height: 20.h,
                width: 20.w,
              ),
            ),
            Text(
              'UEFA Euro 2020',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kWhiteColor,
                fontSize: 20.sp,
              ),
            ),
            Icon(
              Icons.search,
              color: kWhiteColor,
              size: 25.sp,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBottomNavigationBar() {
    return Container(
      height: 70.h,
      color: kBottomBarColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            kSelectedBottomBarList.length,
            (index) => buildBottomBarItem(
              onTap: () => _onSelected(index),
              icon: _selectedIndex != null && _selectedIndex == index
                  ? kSelectedBottomBarList[index]
                  : kUnSelectedBottomBarList[index],
              color: _selectedIndex != null && _selectedIndex == index
                  ? kSelectedIconColor
                  : kUnSelectedIconColor,
              labelColor: _selectedIndex != null && _selectedIndex == index
                  ? kSelectedIconColor
                  : kTransparentColor,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBottomBarItem(
      {Function onTap, IconData icon, Color color, Color labelColor}) {
    return InkResponse(
      onTap: onTap,
      splashColor: kTransparentColor,
      highlightColor: kTransparentColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color,
            size: 25.sp,
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 2.h,
            width: 50.w,
            color: labelColor,
          ),
        ],
      ),
    );
  }
}
