import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:learning_app/app/modules/page_index/controllers/page_index_controller.dart';

import '../../../utils/constant.dart';
import '../../../utils/theme.dart';

class CustomBottomBar extends StatelessWidget {
  final cPage = Get.find<PageIndexController>();

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      height: 60,
      elevation: 0,
      activeColor: blueC,
      backgroundColor: whiteC,
      color: lightBlueC,
      style: TabStyle.fixedCircle,
      items: [
        TabItem(
          icon: SvgPicture.asset(homeIcon),
          title: 'Home',
          activeIcon: SvgPicture.asset(homeIcon, color: blueC),
        ),
        TabItem(
          icon: SvgPicture.asset(courseIcon),
          title: 'Course',
          activeIcon: SvgPicture.asset(courseIcon, color: blueC),
        ),
        TabItem(
          icon: Icon(
            Icons.search,
            color: blueC,
            size: 30,
          ),
          title: 'Add',
          activeIcon: Icon(
            Icons.search,
            color: whiteC,
            size: 30,
          ),
        ),
        TabItem(
          icon: SvgPicture.asset(messageIcon),
          title: 'Message',
          activeIcon: SvgPicture.asset(messageIcon, color: blueC),
        ),
        TabItem(
          icon: SvgPicture.asset(accountIcon),
          title: 'Profile',
          activeIcon: SvgPicture.asset(accountIcon, color: blueC),
        ),
      ],
      initialActiveIndex: cPage.currentIndex.value, //optional, default as 0
      onTap: (int i) => cPage.selectedIndex(context, i),
    );
  }
}
