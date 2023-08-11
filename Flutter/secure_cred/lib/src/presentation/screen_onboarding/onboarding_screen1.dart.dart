import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:secure_cred/src/core/color.dart';
import 'package:secure_cred/src/core/images.dart';
import '../../../utils/router_helper.dart';

class ScreenStartOnboarding extends StatelessWidget {
  const ScreenStartOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: const Color.fromRGBO(255, 242, 230, 1),
      body: SafeArea(
        child: Image.asset(
          KImage.oTPAuthenticationSecurity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
      bottomNavigationBar: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(KImage.threeDotIconImage1),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Secure your secrets\nEmpower your development',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            // InkWell(
            //   onTap: () => Routes.pushNamed(Routes.onboarding),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text(
            //         'Get Started',
            //         style: GoogleFonts.poppins(
            //             fontSize: 14, fontWeight: FontWeight.w500),
            //         textAlign: TextAlign.center,
            //       ),
            //       const Icon(Icons.arrow_forward_outlined)
            //     ],
            //   ),
            // ),
            GestureDetector(
              onTap: () => Routes.pushNamed(Routes.onboarding),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Get Started',
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
