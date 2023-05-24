import 'package:flutter/material.dart';
import 'package:school_management_system/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //will divide the screen in two parts.
        // this container is for the back panal
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.5,
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Hi',
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    fontWeight: FontWeight.w100,
                                  ),
                        ),
                        const SizedBox(
                          width: kDefaultPadding / 3,
                        ),
                        Text(
                          'Shahriar',
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: kDefaultPadding / 2,
                    ),
                    Text(
                      "Class X-II  |  Roll no: 11",
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontSize: 14.0,
                          ),
                    ),
                    const SizedBox(
                      height: kDefaultPadding / 2,
                    ),
                    Container(
                      width: 100,
                      height: 20,
                      decoration: BoxDecoration(
                        color: kOtherColor,
                        borderRadius: BorderRadius.circular(kDefaultPadding),
                      ),
                      child: const Center(
                        child: Text(
                          "2020-2023",
                          style: TextStyle(
                              fontSize: 12.0,
                              color: kTextBlackColor,
                              fontWeight: FontWeight.w200),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: kDefaultPadding / 6,
                ),
                GestureDetector(
                  onTap: () {
                    //in here we profile edit code will be added.
                  },
                  child: const CircleAvatar(
                    minRadius: 50.0,
                    maxRadius: 50.0,
                    backgroundColor: kSecondaryColor,
                    backgroundImage: AssetImage('assets/images/user.jpg'),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (() {
                    // go to attendance screen here
                  }),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height / 12,
                    decoration: BoxDecoration(
                      color: kOtherColor,
                      borderRadius: BorderRadius.circular(kDefaultPadding),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Attendance',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(
                                  fontSize: 16.0,
                                  color: kTextBlackColor,
                                  fontWeight: FontWeight.w800),
                        ),
                        Text(
                          '50.00%',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(
                                  fontSize: 25.0,
                                  color: kTextBlackColor,
                                  fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (() {
                    // go to payment screen here
                  }),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height / 12,
                    decoration: BoxDecoration(
                      color: kOtherColor,
                      borderRadius: BorderRadius.circular(kDefaultPadding),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Fee Due',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(
                                  fontSize: 16.0,
                                  color: kTextBlackColor,
                                  fontWeight: FontWeight.w800),
                        ),
                        Text(
                          '50 \$',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(
                                  fontSize: 25.0,
                                  color: kTextBlackColor,
                                  fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ]),
        ),

        // this expanded method is used for the font edge

        Expanded(
          child: Container(
            color: Colors.transparent, //edge color
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: kOtherColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding * 3),
                    topRight: Radius.circular(kDefaultPadding * 3),
                  )),
              child: ListView(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                        onPress: (){},
                        icon: 'assets/icons/quiz.svg',
                        title: 'Quiz',
                      ),
                      HomeCard(
                        onPress: (){},
                        icon: 'assets/icons/assignment.svg',
                        title: 'Assignments',
                      ),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                        onPress: (){},
                        icon: 'assets/icons/datasheet.svg',
                        title: 'Data',
                      ),
                      HomeCard(
                        onPress: (){},
                        icon: 'assets/icons/calender.svg',
                        title: 'Holidays',
                      ),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                        onPress: (){},
                        icon: 'assets/icons/results.svg',
                        title: 'Results',
                      ),
                      HomeCard(
                        onPress: (){},
                        icon: 'assets/icons/time.svg',
                        title: 'Time',
                      ),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                        onPress: (){},
                        icon: 'assets/icons/gallery.svg',
                        title: 'Gallery',
                      ),
                      HomeCard(
                        onPress: (){},
                        icon: 'assets/icons/event.svg',
                        title: 'Events',
                      ),

                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                        onPress: (){},
                        icon: 'assets/icons/ask.svg',
                        title: 'Ask',
                      ),
                      HomeCard(
                        onPress: (){},
                        icon: 'assets/icons/password.svg',
                        title: 'Change\nPassword',
                      ),

                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                        onPress: (){},
                        icon: 'assets/icons/application.svg',
                        title: 'Leave\nApplication',
                      ),
                      HomeCard(
                        onPress: (){},
                        icon: 'assets/icons/logout.svg',
                        title: 'Logout',
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}


class HomeCard extends StatelessWidget {
  const HomeCard({Key? key, required this.onPress, required this.icon, required this.title}) : super(key: key);
  final VoidCallback onPress;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding/2),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius:
          BorderRadius.circular(kDefaultPadding / 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: kDefaultPadding,
            ),
            SvgPicture.asset(
              icon,
              height: 40,
              width: 40,
              color: kOtherColor,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const SizedBox(
              height: kDefaultPadding / 3,
            )
          ],
        ),
      ),
    );
  }
}
