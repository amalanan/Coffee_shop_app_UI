
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../SizeConfig.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Your Cart',  style: GoogleFonts.poppins(
              fontSize: SizeConfig.responsiveText(4.5),
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),)
      ),

    );
  }
}
