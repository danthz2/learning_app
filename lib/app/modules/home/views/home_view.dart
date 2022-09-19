import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:learning_app/app/modules/page_index/widgets/custom_bottom_bar.dart';
import 'package:learning_app/app/utils/constant.dart';
import 'package:learning_app/app/utils/theme.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      width: size.width,
                      height: 190,
                      padding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 60),
                      color: blueC,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hi, Kristin',
                                style: textWhite.copyWith(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'Let\'s start learning',
                                style: textWhite.copyWith(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        'What do you want to learn today ?',
                        style: textBlack.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 155,
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 24).copyWith(right: 0),
                            padding: EdgeInsets.all(18).copyWith(right: 0),
                            height: 155,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: aquaC,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Get Started',
                                    style: textWhite.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SvgPicture.asset(
                                  personOneIllustration,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 24).copyWith(right: 0),
                            padding: EdgeInsets.all(18).copyWith(right: 0),
                            height: 155,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: aquaC,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SvgPicture.asset(
                                  personTwoIllustration,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24).copyWith(bottom: 10),
                      child: Text(
                        'Learning Plan',
                        style: textBlack.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24).copyWith(top: 0),
                      child: Card(
                        margin: EdgeInsets.zero,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CircularStepProgressIndicator(
                                    totalSteps: 100,
                                    currentStep: 74,
                                    stepSize: 3,
                                    selectedStepSize: 3,
                                    selectedColor: boldGreyC,
                                    unselectedColor: lightGreyC,
                                    padding: 0,
                                    width: 25,
                                    height: 25,
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Packaging Design',
                                      style: textBlack.copyWith(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '40',
                                        style: textBlack.copyWith(
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        '/48',
                                        style: textGrey.copyWith(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CircularStepProgressIndicator(
                                    totalSteps: 100,
                                    currentStep: 25,
                                    stepSize: 3,
                                    selectedStepSize: 3,
                                    selectedColor: boldGreyC,
                                    unselectedColor: lightGreyC,
                                    padding: 0,
                                    width: 25,
                                    height: 25,
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Product Design',
                                      style: textBlack.copyWith(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '6',
                                        style: textBlack.copyWith(
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        '/24',
                                        style: textGrey.copyWith(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 120,
                      width: size.width,
                      margin: EdgeInsets.all(24).copyWith(top: 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: violetC,
                      ),
                      child: Stack(children: [
                        Positioned(
                          top: 10,
                          bottom: 10,
                          right: 10,
                          child: SvgPicture.asset(groupPersonIllustration),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 22),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Meetup',
                                style: textBoldViolet.copyWith(
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                'Off-line exchange of learning ecperience',
                                style: textBoldViolet.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
                Positioned(
                  top: 135,
                  left: 20,
                  right: 20,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                    width: size.width,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: whiteC,
                      boxShadow: [
                        BoxShadow(
                          color: blackC.withOpacity(0.1),
                          offset: Offset(0, 4),
                          blurRadius: 20,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Learned today',
                              style: textGrey.copyWith(fontSize: 12),
                            ),
                            Text(
                              'My courses',
                              style: textBlue.copyWith(fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              '46min',
                              style: textBlack.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              '/ 60min',
                              style: textGrey.copyWith(fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        StepProgressIndicator(
                          totalSteps: 100,
                          currentStep: 80,
                          size: 5,
                          padding: 0,
                          selectedGradientColor: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [orangeC.withOpacity(0.2), orangeC],
                          ),
                          unselectedGradientColor: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              lightGreyC,
                              lightGreyC,
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
