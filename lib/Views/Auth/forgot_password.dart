import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        backgroundColor: Color(0xff000221),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              AuthHeading(
                  fontSize: 15,
                  logo: "assets/images/logo.png",
                  logoSize: 30,
                  mainText: "Forgot your Password ?",
                  subText: ""),
              SizedBox(
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
              SizedBox(
                height: 20,
              ),
              Text(
                "To request for a new password, type your registered email below, a link to reset the password will be sent to that email.",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              AuthTextField(
                  size: 15,
                  icon: Icons.alternate_email,
                  keyboardType: TextInputType.emailAddress,
                  labelText: "Email",
                  obscureText: false),
              SizedBox(
                height: 20,
              ),
              RoundedLoadingButton(
                  width: 2000,
                  borderRadius: 10,
                  color: Color(0xff00C1AA),
                  controller: forgotPasswordBtnController,
                  onPressed: () {},
                  child: Text(
                    "Send",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}