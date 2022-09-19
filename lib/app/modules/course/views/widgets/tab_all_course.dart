import 'package:flutter/cupertino.dart';
import 'package:learning_app/app/modules/course/views/widgets/card_course.dart';

class TabAllCourse extends StatelessWidget {
  const TabAllCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 15,
            (context, index) {
              return CardCourse();
            },
          ),
        ),
      ],
    );
  }
}
