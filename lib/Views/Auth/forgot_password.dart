import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Views/Widgets/Auth/Auth_Text_Field.dart';
import 'package:tyamo/Views/Widgets/Auth/Auth_heading.dart';

class ForgotPassword extends StatelessWidget {
  final RoundedLoadingButtonController forgotPasswordBtnController =
      RoundedLoadingButtonController();

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
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              AuthHeading(
                logo: "assets/images/logo.png",
                mainText: "Forgot your Password? ",
                subText: "",
                logoSize: 20.sp,
                fontSize: 18.sp,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                width: 150,
                child: Image.asset(
                  "assets/images/forgotPassword.png",
                  filterQuality: FilterQuality.high,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "To request for a new password, type your registered email below, a link to reset the password will be sent to that email.",
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              AuthTextField(
                  size: 14.sp,
                  icon: Icons.alternate_email,
                  keyboardType: TextInputType.emailAddress,
                  labelText: "Email",
                  obscureText: false),
              const SizedBox(
                height: 20,
              ),
              Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                    width: 2000,
                    borderRadius: 10,
                    color: const Color(0xff00C1AA),
                    controller: forgotPasswordBtnController,
                    onPressed: () {},
                    child: Text(
                      "Send",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2,
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
