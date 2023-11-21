import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Views/Auth/login.dart';
import 'package:tyamo/Views/Widgets/Auth/Auth_heading.dart';

import '../Profile/profile_setup.dart';
import '../Widgets/Auth/Auth_Text_Field.dart';

class Register extends StatelessWidget {
  final RoundedLoadingButtonController _registerBtnController =
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
              mainText: "Sign Up to ",
              subText: "Get connected with your \nPartner",
              logo: "assets/images/tyamo.png",
              logoSize: 20.sp,
              fontSize: 18.sp,
            ),
            const SizedBox(
              height: 10,
            ),
            // Email
            AuthTextField(
                size: 14.sp,
                icon: Icons.alternate_email,
                keyboardType: TextInputType.emailAddress,
                labelText: "Email",
                obscureText: false),
            const SizedBox(
              height: 10,
            ),
            // Password
            AuthTextField(
                size: 14.sp,
                icon: Icons.password,
                keyboardType: TextInputType.text,
                labelText: "Password",
                obscureText: true),
            const SizedBox(
              height: 15,
            ),
            // Confirm Password
            AuthTextField(
                size: 14.sp,
                icon: Icons.lock_reset,
                keyboardType: TextInputType.text,
                labelText: "Confirm Password",
                obscureText: true),

            const SizedBox(
              height: 10,
            ),
            Hero(
              tag: "Auth",
              child: RoundedLoadingButton(
                width: 2000,
                borderRadius: 10,
                color: Color(0xff00C1AA),
                controller: _registerBtnController,
                onPressed: (() {
                  // print("The Button was Pressed.");
                  Timer(Duration(seconds: 3), () {
                    _registerBtnController.success();
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
                  "Register",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      letterSpacing: 1),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "By Registering, you agree to our terms and conditions.",
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 11.sp,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: Color(0xff5A5B5B),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade, child: Login()));
                  },
                  child: Text(
                    "Sign In!",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w800,
                        fontSize: 14.sp,
                        color: Color(0xff2F76EA)),
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
