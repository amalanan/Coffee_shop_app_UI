import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../SizeConfig.dart';
import 'sign_in_screen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: SizeConfig.blockWidth * 4, // 4% padding left/right
            right: SizeConfig.blockWidth * 4,
            bottom: SizeConfig.blockHeight * 2,
            top: SizeConfig.blockHeight*0.4,
            // 2% top/bottom
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/7.png',
                      height: SizeConfig.blockHeight *8,
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockHeight),

                  Text(
                    'COFFEE TASTE!',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.responsiveText(4.5),
                      ),
                    ),
                  ),

                  SizedBox(height: SizeConfig.blockHeight * 1.8),

                  Image.asset(
                    'assets/images/6.png',
                    height: SizeConfig.blockHeight * 43,
                  ),

                  SizedBox(height: SizeConfig.blockHeight * 2),

                  Text(
                    'Find Your Favorite',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.responsiveText(5),
                      ),
                    ),
                  ),
                  Text(
                    'Coffee Taste!',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.responsiveText(5.5),
                      ),
                    ),
                  ),

                  SizedBox(height: SizeConfig.blockHeight * 1.5),
                  Text(
                    'We’re coffee shop and event\nspace for performing arts',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: SizeConfig.responsiveText(3.5),
                      ),
                    ),
                  ),

                  SizedBox(height: SizeConfig.blockHeight * 3),
                  Container(
                    height: SizeConfig.blockHeight * 7,
                    width: SizeConfig.blockWidth * 60,
                    decoration: BoxDecoration(
                      color: Color(0xff55433C),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.blockWidth * 4,
                          ),
                          child: Text(
                            'Get Started',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig.responsiveText(4.2),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.blockWidth * 2,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const SignInScreen(),
                                ),
                              );
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: SizeConfig.blockHeight * 2.5,
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.brown.shade900,
                                size: SizeConfig.responsiveText(5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
