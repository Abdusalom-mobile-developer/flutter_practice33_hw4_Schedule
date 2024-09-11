import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice33_hw4/config/colors.dart';
import 'package:flutter_practice33_hw4/config/texts.dart';
import 'package:flutter_practice33_hw4/mixins/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with Widgets {
  final String currentDate =
      "${Texts.currentDateTaker()[0]} ${Texts.currentDateTaker()[1]}, ${Texts.currentDateTaker()[2]}";

  Widget calendarDaysMaker(
      {bool isGreen = false,
      bool isWhite = false,
      required int dayNumber,
      bool greyText = false}) {
    final Color color;
    final Color iconColor;
    var textColor = ColorsClass.white;
    if (isGreen) {
      color = ColorsClass.green;
      iconColor = ColorsClass.white;
    } else if (isWhite) {
      color = ColorsClass.white;
      iconColor = ColorsClass.black;
      textColor = ColorsClass.black;
    } else {
      color = Colors.transparent;
      iconColor = Colors.transparent;
    }
    return Container(
      height: MediaQuery.of(context).size.height / 15,
      width: MediaQuery.of(context).size.width / 12,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            dayNumber.toString(),
            style: TextStyle(
                color: greyText ? ColorsClass.grey : textColor,
                fontSize: 17,
                fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.water_drop_outlined,
            color: iconColor,
            size: 19,
          )
        ],
      ),
    );
  }

  Widget bottomIconMaker({bool isGreen = true}) {
    return Container(
      height: MediaQuery.of(context).size.width / 10.5,
      width: MediaQuery.of(context).size.width / 10.5,
      decoration: BoxDecoration(
          color: isGreen ? ColorsClass.green : ColorsClass.white,
          borderRadius: BorderRadius.circular(12)),
      child: Icon(
        Icons.water_drop_outlined,
        color: isGreen ? ColorsClass.white : ColorsClass.black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsClass.black,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(Texts.title,
                              style: TextStyle(
                                color: ColorsClass.white,
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                              )),
                          Transform.translate(
                            offset: const Offset(20, 0),
                            child: TextButton(
                                onPressed: () {},
                                child: const Icon(
                                  CupertinoIcons.xmark,
                                  color: ColorsClass.white,
                                  size: 24,
                                )),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Transform.translate(
                        offset: const Offset(0, -4),
                        child: Text(
                          currentDate,
                          style: const TextStyle(
                            color: ColorsClass.lightGrey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, 8),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 11),
                        margin: const EdgeInsets.symmetric(vertical: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            daysMaker(day: 1, hasPadding: false),
                            daysMaker(day: 2, hasPadding: true),
                            daysMaker(day: 3, hasPadding: true),
                            daysMaker(day: 4, hasPadding: true),
                            daysMaker(day: 5, hasPadding: true),
                            daysMaker(day: 6, hasPadding: true),
                            daysMaker(day: 7, hasPadding: true),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  flex: 4,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            calendarDaysMaker(dayNumber: 29, greyText: true),
                            calendarDaysMaker(dayNumber: 30, greyText: true),
                            calendarDaysMaker(dayNumber: 31, greyText: true),
                            calendarDaysMaker(dayNumber: 1),
                            calendarDaysMaker(isGreen: true, dayNumber: 2),
                            calendarDaysMaker(dayNumber: 3),
                            calendarDaysMaker(dayNumber: 4),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            calendarDaysMaker(dayNumber: 5),
                            calendarDaysMaker(dayNumber: 6),
                            calendarDaysMaker(isWhite: true, dayNumber: 7),
                            calendarDaysMaker(dayNumber: 8),
                            calendarDaysMaker(dayNumber: 9),
                            calendarDaysMaker(dayNumber: 10),
                            calendarDaysMaker(isGreen: true, dayNumber: 11),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            calendarDaysMaker(dayNumber: 12),
                            calendarDaysMaker(isGreen: true, dayNumber: 13),
                            calendarDaysMaker(dayNumber: 14),
                            calendarDaysMaker(dayNumber: 15),
                            calendarDaysMaker(dayNumber: 16),
                            calendarDaysMaker(isWhite: true, dayNumber: 17),
                            calendarDaysMaker(dayNumber: 18),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            calendarDaysMaker(dayNumber: 19),
                            calendarDaysMaker(dayNumber: 20),
                            calendarDaysMaker(dayNumber: 21),
                            calendarDaysMaker(isGreen: true, dayNumber: 22),
                            calendarDaysMaker(dayNumber: 23),
                            calendarDaysMaker(dayNumber: 24),
                            calendarDaysMaker(dayNumber: 25),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            calendarDaysMaker(dayNumber: 26),
                            calendarDaysMaker(isGreen: true, dayNumber: 27),
                            calendarDaysMaker(dayNumber: 28),
                            calendarDaysMaker(dayNumber: 29),
                            calendarDaysMaker(dayNumber: 30),
                            calendarDaysMaker(dayNumber: 31),
                            calendarDaysMaker(dayNumber: 1, greyText: true),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            calendarDaysMaker(dayNumber: 2, greyText: true),
                            calendarDaysMaker(dayNumber: 3, greyText: true),
                            calendarDaysMaker(dayNumber: 4, greyText: true),
                            calendarDaysMaker(dayNumber: 5, greyText: true),
                            calendarDaysMaker(dayNumber: 6, greyText: true),
                            calendarDaysMaker(dayNumber: 7, greyText: true),
                            calendarDaysMaker(dayNumber: 8, greyText: true),
                          ],
                        )
                      ],
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Row(children: [
                              bottomIconMaker(),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(Texts.bottomText1,
                                  style: TextStyle(
                                    color: ColorsClass.white,
                                    fontSize: 18,
                                  ))
                            ]),
                            const SizedBox(height: 15),
                            Row(children: [
                              bottomIconMaker(isGreen: false),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(Texts.bottomText2,
                                  style: TextStyle(
                                    color: ColorsClass.white,
                                    fontSize: 18,
                                  ))
                            ]),
                          ],
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 13.5,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              border: Border.all(
                                  color: ColorsClass.white, width: 2)),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(Texts.buttonText,
                                  style: TextStyle(
                                      fontSize: 18.7,
                                      color: ColorsClass.white))),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
