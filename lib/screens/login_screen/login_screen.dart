import 'package:flutter/material.dart';
import 'package:school_management_system/components/custom_buttons.dart';
import 'package:school_management_system/constants.dart';
import 'package:school_management_system/screens/home_screen/home_screen.dart';
import 'package:school_management_system/screens/home_screen/home_screen.dart';

late bool _passwordVisible = false;

class LoginScreen extends StatefulWidget {
  static String routeName = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // validator for our form
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // when user taps anywhere the keyboard will unfocused.
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          body: ListView(
        children: [
          //dividing the body into half
          Container(
            // media query is used to fit the screen sizes in same manner
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / 1.2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/logo.png',
                  height: 150,
                  width: 150,
                ),
                Text('School Space',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.w200, color: kSecondaryColor)),
                const SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hi ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontWeight: FontWeight.w200),
                    ),
                    Text('Student',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontWeight: FontWeight.bold,
                            ))
                  ],
                ),
                const SizedBox(
                  height: kDefaultPadding / 6,
                ),
                Text('Sign in to continue',
                    style: Theme.of(context).textTheme.subtitle2),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(kDefaultPadding * 3),
                topRight: Radius.circular(kDefaultPadding * 3),
              ),
              color: kOtherColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Sizedbox,
                          buildEmailField(),
                          Sizedbox,
                          buildPasswordField(),
                          Sizedbox,
                          DefaultButton(
                            onPress: () {
                              if (_formKey.currentState!.validate()) {
                                //go to next activity
                                Navigator.pushNamedAndRemoveUntil(context,
                                    HomeScreen.routeName, (route) => false);
                              }
                            },
                            title: 'SIGN IN',
                            iconData: Icons.login_rounded,
                          ),
                          Sizedbox,
                          const Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              'Forget Password',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: kPrimaryColor, fontSize: 15.0),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          )
        ],
      )),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: const TextStyle(
        color: kTextBlackColor,
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
      ),
      decoration: const InputDecoration(
        labelText: 'Email/Mobile Number',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
      ),
      validator: ((value) {
        RegExp regExp = new RegExp(emailPattern);
        if (value == null || value.isEmpty) {
          return 'Please Enter Your Email';
        } else if (!regExp.hasMatch(value)) {
          return 'Please Enter Valid Email Address!';
        }
      }),
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      obscureText: _passwordVisible,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.visiblePassword,
      style: const TextStyle(
        color: kTextBlackColor,
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        labelText: 'Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
        suffixIcon: IconButton(
            onPressed: (() {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            }),
            icon: Icon(_passwordVisible
                ? Icons.visibility_off_outlined
                : Icons.visibility_off_outlined)),
      ),
      validator: (value) {
        if (value!.length < 5) {
          return 'Must be more than 5 characters';
        }
      },
    );
  }
}
