import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:learning_app/app/routes/app_pages.dart';
import 'package:learning_app/app/utils/constant.dart';
import 'package:learning_app/app/utils/theme.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(24),
            color: lightGreyC,
            height: 160,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text(
                  'Log in',
                  style: textBlack.copyWith(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.fromLTRB(24, 32, 24, 0),
              children: [
                Text(
                  'Your Email',
                  style: textGrey,
                ),
                TextField(
                  controller: controller.emailC,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Password',
                  style: textGrey,
                ),
                Obx(
                  () => TextField(
                    controller: controller.passwordC,
                    obscureText: controller.obsecureText.value,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: lightBlueC),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      suffixIcon: IconButton(
                        icon: controller.obsecureText.isTrue ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                        onPressed: () {
                          controller.obsecureText.value = !controller.obsecureText.value;
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Text(
                  'Forget Password',
                  style: textGrey,
                  textAlign: TextAlign.end,
                ),
                SizedBox(
                  height: 13,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.HOME);
                  },
                  child: Text(
                    'Log in',
                    style: textWhite.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: blueC,
                    fixedSize: Size(
                      double.infinity,
                      50,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account?'),
                    TextButton(
                      onPressed: () {},
                      child: Text('Sign up'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      endIndent: 15,
                    )),
                    Text('Or login with'),
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      indent: 15,
                    )),
                  ],
                ),
                SizedBox(
                  height: 21,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(googleIcon),
                    SizedBox(
                      width: 46,
                    ),
                    SvgPicture.asset(facebookIcon),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
