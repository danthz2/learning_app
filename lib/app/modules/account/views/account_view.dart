import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learning_app/app/modules/page_index/widgets/custom_bottom_bar.dart';

import '../../../utils/theme.dart';
import '../controllers/account_controller.dart';

class AccountView extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          padding: EdgeInsets.all(20),
          children: [
            Text(
              'Account',
              style: textBlack.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            CircleAvatar(
              radius: 50,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              onTap: () {},
              title: Text(
                'Favorite',
                style: textBlack.copyWith(
                  fontSize: 18,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              onTap: () {},
              title: Text(
                'Edit Account',
                style: textBlack.copyWith(
                  fontSize: 18,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              onTap: () {},
              title: Text(
                'Settings and Privacy',
                style: textBlack.copyWith(
                  fontSize: 18,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              onTap: () {},
              title: Text(
                'Help',
                style: textBlack.copyWith(
                  fontSize: 18,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
