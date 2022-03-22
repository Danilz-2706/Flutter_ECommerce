import 'package:ecommerce/Screens/Login/login_screen.dart';
import 'package:ecommerce/Screens/Signup/components/or_divider.dart';
import 'package:ecommerce/Screens/Signup/components/social_icon.dart';
import 'package:ecommerce/Screens/Welcome/components/background.dart';
import 'package:ecommerce/components/already_have_an_account_check.dart';
import 'package:ecommerce/components/rounded_button.dart';
import 'package:ecommerce/components/rounded_input_field.dart';
import 'package:ecommerce/components/rounded_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGround(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'SIGNUP',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              'assets/icons/signup.svg',
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
              hinttext: "Your email",
              onChanged: (value) {},
              icon: Icons.person,
            ),
            RoundedPasswordField(
              hinttext: "Password",
              iconb: Icons.lock,
              iconf: Icons.visibility,
              onchanged: (value) {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              },
            ),
            const OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocalIcon(
                  iconsrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconsrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconsrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
