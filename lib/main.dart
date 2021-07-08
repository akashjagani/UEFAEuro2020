import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uefa_euro/conts.dart';
import 'package:uefa_euro/device_dimensions.dart';
import 'package:uefa_euro/screens/home.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: kAppBackgroundColor,
    ),
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(designWidthInPixels, designHeightInPixels),
      builder: () {
        return MaterialApp(
          title: 'UEFA Euro',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(),
          home: Home(),
        );
      },
    );
  }
}