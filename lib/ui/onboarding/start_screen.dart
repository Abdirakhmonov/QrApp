import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musobaqa/ui/screens/home_screen.dart';
import 'package:musobaqa/utils/app_const.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.yellow,
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: SvgPicture.asset(
                'assets/scaner.svg',
              ),
            ),
            const Spacer(),
            Text(
                'Go and enjoy our features for free and make your life easy with us.',
                textAlign: TextAlign.center,
                style: GoogleFonts.itim().copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                )),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Spacer(),
                    Text(
                      'Let\'s Start',
                      style: GoogleFonts.inter().copyWith(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.arrow_forward, color: Colors.white),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
