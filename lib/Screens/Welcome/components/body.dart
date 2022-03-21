import 'package:ecommerce/Screens/Login/login_screen.dart';
import 'package:ecommerce/Screens/Signin/signin_screen.dart';
import 'package:ecommerce/Screens/Welcome/components/background.dart';
import 'package:ecommerce/components/reounded_button.dart';
import 'package:ecommerce/constants.dart';
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
              'WELCOME TO MY STORE',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * 0.4,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }),
                );
              },
            ),
            RoundedButton(
              text: "SIGN IN",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SigninScreen();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
