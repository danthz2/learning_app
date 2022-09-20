import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:learning_app/app/utils/constant.dart';
import 'package:learning_app/app/utils/theme.dart';

class DetailCourseView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightRedC,
        foregroundColor: blackC,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            color: lightRedC,
            width: MediaQuery.of(context).size.width,
            height: 250,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: SvgPicture.asset(
                    personOneIllustration,
                    width: 200,
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        margin: EdgeInsets.zero,
                        color: yellowC,
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          child: Text('BESTSELLER   '),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Product Design v1.0',
                        style: textBlack.copyWith(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListView(
            padding: EdgeInsets.only(top: 230),
            children: [
              Container(
                padding: EdgeInsets.all(20).copyWith(bottom: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                  color: whiteC,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Product Design v1.0',
                          style: textBlack.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '\$74.00',
                          style: textBlue.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '6h 14min • 24 Lessons',
                      style: textGrey,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'About this course',
                      style: textBlack.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, ',
                      style: textGrey,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '01',
                            style: textGrey.copyWith(
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome to the Courssad asd sad sa dsad sad e',
                                  style: textBlack,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  '6:10 mins',
                                  style: textGrey,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: blueC,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.play_arrow_rounded,
                              color: whiteC,
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: lightRedC,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                fixedSize: Size(90, 50),
              ),
              onPressed: () {},
              child: Icon(
                Icons.star_border_outlined,
                color: orangeC,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: blueC,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  fixedSize: Size(90, 50),
                ),
                onPressed: () {},
                child: Text('Buy Now'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
