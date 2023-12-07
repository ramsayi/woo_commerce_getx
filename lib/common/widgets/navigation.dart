import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:woo/common/i18n/index.dart';

/// 导航栏
class BuildNavigation extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BuildNavigation({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<BuildNavigation> createState() => BuildNavigationState(
        currentIndex: currentIndex,
        onTap: onTap,
      );
}

class BuildNavigationState extends State<BuildNavigation> {
  int currentIndex;
  final Function(int) onTap;

  BuildNavigationState({
    required this.currentIndex,
    required this.onTap,
  });

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.favorite_rounded,
    Icons.settings_rounded,
    Icons.person_rounded,
  ];

  List<String> listOfStrings = [
    LocaleKeys.tabBarHome.tr,
    LocaleKeys.tabBarCart.tr,
    LocaleKeys.tabBarMessage.tr,
    LocaleKeys.tabBarProfile.tr,
  ];

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.all(displayWidth * .05),
      height: displayWidth * .155,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.1),
            blurRadius: 30,
            offset: const Offset(0, 10),
          ),
        ],
        borderRadius: BorderRadius.circular(50),
      ),
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            setState(() {
              currentIndex = index;
              HapticFeedback.lightImpact();
            });
            onTap(index);
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Stack(
            children: [
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.fastLinearToSlowEaseIn,
                width: index == currentIndex ? displayWidth * .32 : displayWidth * .18,
                alignment: Alignment.center,
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  height: index == currentIndex ? displayWidth * .12 : 0,
                  width: index == currentIndex ? displayWidth * .32 : 0,
                  decoration: BoxDecoration(
                    color: index == currentIndex ? Colors.blueAccent.withOpacity(.2) : Colors.transparent,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.fastLinearToSlowEaseIn,
                width: index == currentIndex ? displayWidth * .31 : displayWidth * .18,
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Row(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn,
                          width: index == currentIndex ? displayWidth * .14 : 0,
                        ),
                        AnimatedOpacity(
                          opacity: index == currentIndex ? 1 : 0,
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn,
                          child: Text(
                            index == currentIndex ? listOfStrings[index] : '',
                            style: const TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn,
                          width: index == currentIndex ? displayWidth * .03 : 20,
                        ),
                        Icon(
                          listOfIcons[index],
                          size: displayWidth * .076,
                          color: index == currentIndex ? Colors.blueAccent : Colors.black26,
                        ),
                      ],
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
}
