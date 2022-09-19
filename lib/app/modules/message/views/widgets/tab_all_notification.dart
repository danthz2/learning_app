import 'package:flutter/material.dart';
import 'package:learning_app/app/modules/message/views/widgets/card_notification.dart';

class TabAllNotification extends StatelessWidget {
  const TabAllNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 15,
            (context, index) {
              return CardNotification();
            },
          ),
        ),
      ],
    );
  }
}
