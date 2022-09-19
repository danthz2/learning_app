import 'package:flutter/material.dart';
import 'package:learning_app/app/utils/theme.dart';

class CardCourse extends StatelessWidget {
  const CardCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 68,
                width: 68,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: greyC,
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Product Design v1.0',
                    style: textBlack.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: greyC,
                        size: 20,
                      ),
                      Text(
                        'Product Design v1.0',
                        style: textGrey,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '\$190',
                        style: textBlue.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: lightRedC,
                        ),
                        child: Text(
                          '16 Hours',
                          style: textOrange,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
