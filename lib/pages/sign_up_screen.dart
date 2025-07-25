import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../SizeConfig.dart';
import 'home_page.dart';
import 'home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _obscurePassword = true;
  bool _obscureConfirm = true;

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
                Image.asset(
                  'assets/images/8.png',
                  height: SizeConfig.blockHeight * 27,
                  // ~30% screen height
                  fit: BoxFit.contain,
                ),
                SizedBox(height: SizeConfig.blockHeight * 2),
                Text(
                  'Create Account',
                  style: GoogleFonts.poppins(
                    fontSize: SizeConfig.responsiveText(6),
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  'Join us to explore coffee delights!',
                  style: GoogleFonts.poppins(
                    fontSize: SizeConfig.responsiveText(3.8),
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: SizeConfig.blockHeight * 2),
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
                SizedBox(height: SizeConfig.blockHeight * 2),

                TextField(
                  controller: confirmPasswordController,
                  obscureText: _obscureConfirm,
                  decoration: InputDecoration(
                    labelText: 'RE-Password*',
                    hintText: 'amal anan',
                    prefixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureConfirm
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureConfirm = !_obscureConfirm;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.blockHeight * 1.5),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // Navigate to forgot password screen
                    },
                    child: Text(
                      "Forgot password?",
                      style: GoogleFonts.poppins(
                        fontSize: SizeConfig.responsiveText(3.5),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.blockHeight * 2),
                ElevatedButton(
                  onPressed: () {
                    // Handle Sign Up logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF8B5E3C),
                    padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockHeight * 2,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sign Up",
                          style: GoogleFonts.poppins(
                            fontSize: SizeConfig.responsiveText(4.2),
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: SizeConfig.blockWidth * 2),
                        const Icon(Icons.arrow_forward, color: Colors.white),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.blockHeight * 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: GoogleFonts.poppins(
                        fontSize: SizeConfig.responsiveText(3.5),
                        color: Colors.black54,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context); // or navigate to SignInScreen
                      },
                      child: Text(
                        "Sign In",
                        style: GoogleFonts.poppins(
                          fontSize: SizeConfig.responsiveText(3.5),
                          color: const Color(0xFF8B5E3C),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
