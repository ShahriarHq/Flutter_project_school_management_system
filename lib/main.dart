import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system/constants.dart';
import 'package:school_management_system/routes.dart';
import 'package:school_management_system/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'School Space',
        theme: ThemeData.light().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            primaryColor: kPrimaryColor,
            // usign google font for our app
            textTheme: GoogleFonts.sourceSansProTextTheme(
              Theme.of(context).textTheme.apply().copyWith(
                    bodyText1: const TextStyle(
                      color: kTextWhiteColor,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w100,
                    ),
                    bodyText2: const TextStyle(
                      color: kTextWhiteColor,
                      fontSize: 28.0,
                    ),
                    subtitle2: const TextStyle(
                        color: kTextWhiteColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400),
                    subtitle1: const TextStyle(
                        color: kTextWhiteColor,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w400),
                  ),
            ),
            inputDecorationTheme: const InputDecorationTheme(
              //label style for form field
              labelStyle: TextStyle(
                fontSize: 15.0,
                color: kTextLightColor,
                height: 0.5,
              ),
              hintStyle: TextStyle(
                fontSize: 16.0,
                color: kTextLightColor,
                height: 0.5,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kTextLightColor, width: 0.7),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kTextLightColor,
                ),
              ),
              disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kTextLightColor,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kSecondaryColor,
                ),
              ),
              // color will change when user input wrong email.
              errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kErrorBorderColor,
                  width: 1.2,
                ),
              ),
              focusedErrorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kErrorBorderColor,
                  width: 1.2,
                ),
              ),
            )),
        initialRoute: SplashScreen.routeName,
        routes: routes,
      ),
    );
  }
}
