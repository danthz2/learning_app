// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/app/routes/app_pages.dart';

import '../../../utils/theme.dart';
import '../../home/controllers/home_controller.dart';

class PageIndexController extends GetxController {
  List listCategories = ['Design', 'Painting', 'Coding', 'Music', 'Visual Identiy', 'Mathamtics'];
  List listDuration = ['3-8', '8-14', '14-20', '20-24', '24-30'];
  int? categoryValue = 1;
  int? durationValue = 1;
  var sliderValue = RangeValues(20.0, 50.0);
  var currentIndex = 0.obs;
  void selectedIndex(BuildContext context, int index) {
    switch (index) {
      case 0:
        currentIndex.value = index;
        Get.toNamed(Routes.HOME);
        break;
      case 1:
        Get.toNamed(Routes.COURSE);
        currentIndex.value = index;
        update();
        break;
      case 2:
        currentIndex.value = index;
        _dialog();
        break;
      case 3:
        Get.toNamed(Routes.MESSAGE);
        currentIndex.value = index;
        update();
        break;
      case 4:
        Get.toNamed(Routes.ACCOUNT);
        currentIndex.value = index;
        update();
        break;
      default:
    }
  }

  _dialog() {
    return Get.bottomSheet(
      GetBuilder<PageIndexController>(
        builder: (_) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.close,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          'Search Filter',
                          style: textBlack.copyWith(fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 29).copyWith(top: 0),
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Categories',
                      style: textBlack.copyWith(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Wrap(
                      spacing: 10,
                      children: List<Widget>.generate(
                        listCategories.length,
                        (int index) {
                          return ChoiceChip(
                            backgroundColor: lightBlueC,
                            selectedColor: blueC,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            label: Text('${listCategories[index]}'),
                            labelStyle: categoryValue == index ? textWhite : textGrey,
                            labelPadding: EdgeInsets.symmetric(horizontal: 10),
                            selected: categoryValue == index,
                            onSelected: (bool selected) {
                              categoryValue = selected ? index : null;
                              update();
                            },
                          );
                        },
                      ).toList(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Price',
                      style: textBlack.copyWith(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$0',
                          style: textGrey.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: SliderTheme(
                            data: SliderThemeData(
                              activeTickMarkColor: Colors.transparent,
                              inactiveTickMarkColor: Colors.transparent,
                              trackHeight: 1,
                              thumbColor: whiteC,
                              overlayColor: blueC,
                              activeTrackColor: blueC,
                              inactiveTrackColor: greyC,
                              overlayShape: RoundSliderOverlayShape(overlayRadius: 15),
                            ),
                            child: RangeSlider(
                              labels: RangeLabels('\$${sliderValue.start.toStringAsFixed(0)}',
                                  '\$${sliderValue.end.toStringAsFixed(0)}'),
                              divisions: 100,
                              min: 0,
                              max: 100,
                              values: sliderValue,
                              onChanged: (values) {
                                sliderValue = values;
                                update();
                                print(values);
                              },
                            ),
                          ),
                        ),
                        Text(
                          '\$100',
                          style: textGrey.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Duration',
                      style: textBlack.copyWith(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Wrap(
                      spacing: 10,
                      children: List<Widget>.generate(
                        listDuration.length,
                        (int index) {
                          return ChoiceChip(
                            backgroundColor: lightBlueC,
                            selectedColor: blueC,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            label: Text('${listDuration[index]} Hours'),
                            labelStyle: durationValue == index ? textWhite : textGrey,
                            labelPadding: EdgeInsets.symmetric(horizontal: 10),
                            selected: durationValue == index,
                            onSelected: (bool selected) {
                              durationValue = selected ? index : null;
                              update();
                            },
                          );
                        },
                      ).toList(),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            fixedSize: Size(90, 50),
                            primary: blueC,
                            side: BorderSide(
                              color: blueC,
                            ),
                          ),
                          onPressed: () {},
                          child: Text('Clear'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: blueC,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              fixedSize: Size(90, 50),
                            ),
                            onPressed: () {},
                            child: Text('Apply Filter'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
      backgroundColor: whiteC,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
    );
  }
}
