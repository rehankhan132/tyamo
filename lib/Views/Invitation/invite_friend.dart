import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tyamo/Views/Invitation/accept_invite.dart';

class InviteFriend extends StatelessWidget {
  const InviteFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Container(
            height: 30,
            child: Image.asset(
              "assets/images/logo.png",
              filterQuality: FilterQuality.high,
            ),
          ),
          leading: null,
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: AcceptInvite()));
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Icon(
                  Icons.person_outline,
                  color: Colors.purple,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 50,
            color: Color(0xff00D7CC),
            child: Text(
              "Find Your Friend!",
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  letterSpacing: 1),
              textScaleFactor: 1,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 10,
                        ),
                        hintText: "Hi Rehan, Type an exact Username",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Nunito",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          /* Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Container(
                height: 100,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 20, 5, 15),
                          child: Container(
                            height: 60,
                            width: 60,
                            child: CircularProfileAvatar(
                              "",
                              backgroundColor: Colors.blue,
                              radius: 35,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                              ),
                              child: Text(
                                "@Faizan9562",
                                style: GoogleFonts.poppins(
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 0,
                              ),
                              child: Text(
                                "Faizan",
                                style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              GFButton(
                                color: Color(0xff00D7CC),
                                shape: GFButtonShape.pills,
                                onPressed: () {},
                                child: Text("Accept"),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              GFButton(
                                color: Color.fromARGB(255, 235, 51, 82),
                                shape: GFButtonShape.pills,
                                onPressed: () {},
                                child: Text("Decline"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ), */
          Container(
            height: 200,
            width: 200,
            child: Image.asset("assets/images/invite.png"),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Search your friend on Tyamo or invite \nyour friend to Tyamo",
            style: GoogleFonts.nunito(
              fontSize: 18,
              color: Colors.grey,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 5,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Invite a Friend",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    );
  }
}