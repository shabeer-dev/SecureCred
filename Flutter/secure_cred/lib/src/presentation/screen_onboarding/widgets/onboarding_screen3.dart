import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:secure_cred/src/core/color.dart';
import 'package:secure_cred/src/core/images.dart';

class ScreenOnboardingWidget2 extends StatelessWidget {
  const ScreenOnboardingWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Kcolor.red,
      extendBodyBehindAppBar: true,
      body: Container(
        margin: EdgeInsets.only(top: 40),
        width: double.infinity,
        height: screenHight / 1.05,
        child: Image.asset(KImage.group),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "Your Password is\n Safe Here.",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Let’s create an secure Lorem ipsum dolor sit\namet, consectetur adipiscing elit, sed do\neiusmod tempor incididunt ut labore et\ndolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco\nlaboris nisi ut aliquip ex ea commodo.",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Kcolor.textGrey,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
    
  }
}
