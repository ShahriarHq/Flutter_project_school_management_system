import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/constants.dart';
import 'package:school_management_system/screens/login_screen/login_screen.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "SplashScreen";

  @override
  Widget build(BuildContext context) {
    //in here we will use future to go one screen to another via duration time
    Future.delayed(Duration(seconds: 5), (() {
      
      Navigator.pushNamedAndRemoveUntil(
          context, LoginScreen.routeName, (route) => false);
    }));

    return Scaffold(
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'School',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: kTextWhiteColor,
                    fontSize: 50.0,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2.0),
              ),
              Text(
                'Space',
                style: GoogleFonts.pattaya(
                    fontSize: 50.0,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w700,
                    color: kTextWhiteColor),
              )
            ],
          ),
          Image.asset(
            'assets/icons/logo.png',
            height: 150.0,
            width: 150.0,
          )
        ]),
      ),
    );
  }
}
