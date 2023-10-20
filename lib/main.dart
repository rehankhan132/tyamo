import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:tyamo/Views/Invitation/accept_invite.dart';
// import 'package:tyamo/Views/Invitation/invite_friend.dart';
// import 'package:tyamo/Views/Profile/profile_setup.dart';
// import 'Views/Auth/forgot_password.dart';
import 'Views/Auth/login.dart';
// import 'Views/Auth/register.dart';

void main() {
  runApp(const Tyamo());
}

class Tyamo extends StatelessWidget {
  const Tyamo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Tyamo',
          home: Login(),
        );
      },
    );
  }
}
