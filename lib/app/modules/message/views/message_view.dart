import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learning_app/app/modules/message/views/widgets/tab_all_message.dart';
import 'package:learning_app/app/modules/message/views/widgets/tab_all_notification.dart';
import 'package:learning_app/app/modules/page_index/widgets/custom_bottom_bar.dart';

import '../../../utils/theme.dart';
import '../controllers/message_controller.dart';

class MessageView extends GetView<MessageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: DefaultTabController(
              length: 2,
              child: NestedScrollView(
                headerSliverBuilder: (context, _) {
                  return [
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Notifications',
                                  style: textBlack.copyWith(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox()
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
                    TabAllMessage(),
                    TabAllNotification(),
                  ],
                ),
              ))),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}

class Delegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return TabBar(
      unselectedLabelColor: greyC,
      padding: EdgeInsets.symmetric(horizontal: 40),
      indicatorColor: blueC,
      indicatorSize: TabBarIndicatorSize.label,
      splashBorderRadius: BorderRadius.circular(50),
      tabs: [
        Tab(
            child: Text(
          'message',
          style: textBlack.copyWith(fontSize: 16),
        )),
        Tab(
          child: Text(
            'notification',
            style: textBlack.copyWith(fontSize: 16),
          ),
        ),
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
