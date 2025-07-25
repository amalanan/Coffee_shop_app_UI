
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../SizeConfig.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Your Profile',  style: GoogleFonts.poppins(
          fontSize: SizeConfig.responsiveText(4.5),
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),)
      ),

    );
  }
}
