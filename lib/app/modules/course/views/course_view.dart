import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:learning_app/app/modules/course/views/widgets/tab_all_course.dart';
import 'package:learning_app/app/modules/page_index/widgets/custom_bottom_bar.dart';
import 'package:learning_app/app/utils/constant.dart';

import '../../../utils/theme.dart';
import '../controllers/course_controller.dart';

class CourseView extends GetView<CourseController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: NestedScrollView(
            headerSliverBuilder: (context, _) {
              return [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20).copyWith(bottom: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Course',
                              style: textBlack.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: lightBlueC,
                            hintText: 'Find Course',
                            border: InputBorder.none,
                            prefixIcon: IconButton(
                              splashRadius: 1,
                              icon: SvgPicture.asset(searchIcon),
                              onPressed: () {},
                            ),
                            suffixIcon: IconButton(
                              splashRadius: 1,
                              icon: SvgPicture.asset(filterIcon),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 160,
                        child: ListView(
                          padding: EdgeInsets.all(20).copyWith(top: 0),
                          scrollDirection: Axis.horizontal,
                          children: [
                            SvgPicture.asset(adsOneIllustration),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(adsTwoIllustration),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(adsOneIllustration),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(adsTwoIllustration),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SliverPersistentHeader(
                  delegate: Delegate(),
                ),
              ];
            },
            body: TabBarView(
              children: [
                TabAllCourse(),
                TabAllCourse(),
                TabAllCourse(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}

class Delegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return TabBar(
      unselectedLabelColor: greyC,
      padding: EdgeInsets.symmetric(horizontal: 20),
      indicator: BoxDecoration(
          color: blueC,
          borderRadius: BorderRadius.circular(
            50,
          )),
      indicatorColor: Colors.transparent,
      splashBorderRadius: BorderRadius.circular(50),
      tabs: [
        Tab(child: Text('All')),
        Tab(child: Text('Popular')),
        Tab(child: Text('New')),
      ],
    );
  }

  @override
  double get maxExtent => 70;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
