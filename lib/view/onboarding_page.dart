import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_app/view/home_screen.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Quran App',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Learn Quran\nRecite Once A Day\nby Ahmad Fathir',
                style: GoogleFonts.poppins(color: Colors.grey, fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 32,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 450,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.purple),
                    child: SvgPicture.asset('assets/svg/splash.svg'),
                  ),
                  Positioned(
                      left: 0,
                      bottom: -20,
                      right: 0,
                      child: Center(
                          child: ElevatedButton(
                              child: Text(
                                'Get Started',
                                style: GoogleFonts.poppins(
                                    color: Colors.white, fontSize: 17),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  fixedSize: const Size(150, 50)),
                              onPressed: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => const Homescreen()));
                              })))
                ],
              )
            ]),
      ),
    ));
  }
}
