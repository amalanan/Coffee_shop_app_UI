import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../SizeConfig.dart';
import 'home_screen.dart';
import 'sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context); // Initialize responsiveness

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.blockWidth * 4, // 4% padding left/right
              right: SizeConfig.blockWidth * 4,
              bottom: SizeConfig.blockHeight * 2, // 2% top/bottom
            ),
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/8.png',
                        height: SizeConfig.blockHeight * 27,
                        // ~30% screen height
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: SizeConfig.blockHeight * 2),
                      Text(
                        'Sign In',
                        style: GoogleFonts.poppins(
                          fontSize: SizeConfig.responsiveText(7), // ~7% width
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        "We've already met!",
                        style: GoogleFonts.poppins(
                          fontSize: SizeConfig.responsiveText(4), // ~4% width
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: SizeConfig.blockHeight * 3),

                      // Phone Number Field
                      TextField(
                        controller: phoneController,
                        decoration: InputDecoration(
                          labelText: 'Phone Number*',
                          prefixIcon: Icon(Icons.phone_android),
                          hintText: '+059 9123456',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      SizedBox(height: SizeConfig.blockHeight * 2),

                      // Password Field
                      TextField(
                        controller: passwordController,
                        obscureText: _obscurePassword,
                        decoration: InputDecoration(
                          labelText: 'Password*',
                          hintText: 'amal anan',
                          prefixIcon: Icon(Icons.lock_outline),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: SizeConfig.blockHeight * 3),
                      // Sign In Button
                      SizedBox(
                        width: double.infinity,
                        height: SizeConfig.blockHeight * 7,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                              );
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF4E342E),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Text(
                            'Sign In',
                            style: GoogleFonts.poppins(
                              fontSize: SizeConfig.responsiveText(4.5),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: SizeConfig.blockHeight * 3),

                      // Sign Up link
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: GoogleFonts.poppins(
                              fontSize: SizeConfig.responsiveText(3.8),
                              color: Colors.black54,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const SignUpScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "Sign Up",
                              style: GoogleFonts.poppins(
                                fontSize: SizeConfig.responsiveText(4),
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF8B5E3C),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
