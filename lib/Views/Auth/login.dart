import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Views/Auth/forgot_password.dart';
import 'package:tyamo/Views/Auth/register.dart';
import 'package:tyamo/Views/Profile/profile_setup.dart';
import 'package:tyamo/Views/Widgets/Auth/Auth_Text_Field.dart';
import 'package:tyamo/Views/Widgets/Auth/Auth_heading.dart';

class Login extends StatelessWidget {
  // Login({super.key});

  final RoundedLoadingButtonController _loginBtnController =
      RoundedLoadingButtonController();

/*   void loginbtn() {
    print("The Button was pressed!");
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tyamo",
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xff000221),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(children: [
            AuthHeading(
              mainText: "Sign in to ",
              subText: "To connect with \nyour partner",
              logo: "assets/images/tyamo.png",
              logoSize: 20.sp,
              fontSize: 18.sp,
            ),
            const SizedBox(
              height: 20,
            ),
            // Email
            AuthTextField(
                size: 14.sp,
                icon: Icons.alternate_email,
                keyboardType: TextInputType.emailAddress,
                labelText: "Email",
                obscureText: false),
            const SizedBox(
              height: 15,
            ),
            // Password
            AuthTextField(
                size: 14.sp,
                icon: Icons.password,
                keyboardType: TextInputType.text,
                labelText: "Password",
                obscureText: true),

            const SizedBox(
              height: 20,
            ),
            Hero(
              tag: "Auth",
              child: RoundedLoadingButton(
                width: 2000,
                borderRadius: 10,
                color: const Color(0xff00C1AA),
                controller: _loginBtnController,
                onPressed: (() {
                  // print("The Button was Pressed.");
                  Timer(const Duration(seconds: 3), () {
                    _loginBtnController.success();
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: ProfileSetup(),
                      ),
                    );
                  });
                }),
                child: Text(
                  "Login",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      letterSpacing: 1),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: ForgotPassword()));
              },
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Forgot Password?",
                  style: GoogleFonts.poppins(
                    color: const Color(0xffC1272D),
                    fontWeight: FontWeight.normal,
                    fontSize: 12.sp,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: const Color(0xff5A5B5B),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade, child: Register()));
                  },
                  child: Text(
                    "Sign Up!",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w800,
                        fontSize: 14.sp,
                        color: const Color(0xff2F76EA)),
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
