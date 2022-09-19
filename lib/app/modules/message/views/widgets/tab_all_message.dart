import 'package:flutter/material.dart';
import 'package:learning_app/app/modules/message/views/widgets/card_message.dart';

class TabAllMessage extends StatelessWidget {
  const TabAllMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 15,
            (context, index) {
              return CardMessage();
            },
          ),
        ),
      ],
    );
  }
}
