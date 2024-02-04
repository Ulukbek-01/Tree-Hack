import 'package:flutter/material.dart';
import 'package:plants_app/constants/const_colors.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int splashtime = 2;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: splashtime), () {
      // Navigator.of(context)
      //     .pushNamedAndRemoveUntil(, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: ConstColors.kBackGreen,
      ),
      backgroundColor: ConstColors.kBackGreen,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            flex: 4,
            child: SizedBox(),
          ),
          const SizedBox(width: double.infinity),
          SizedBox(
            width: 55.w,
            child: Image.asset('assets/images/flashscreen.png'),
          ),
          const Expanded(
            flex: 7,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
