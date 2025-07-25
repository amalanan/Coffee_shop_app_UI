import 'package:coffee_shop_app/pages/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../SizeConfig.dart';
import 'cart_screen.dart';
import 'favorite_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: const Color(0xFF8B5E3C),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.grid_view_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return FavoriteScreen();
                    },
                  ),
                );
              },
              child: Icon(Icons.favorite_border),
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return CartScreen();
                    },
                  ),
                );
              },

              child: Icon(Icons.shopping_bag_outlined),
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return ProfileScreen();
                    },
                  ),
                );
              },

              child: Icon(Icons.person_outline),
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            right: SizeConfig.blockWidth * 4,
            left: SizeConfig.blockWidth * 4,
            bottom: SizeConfig.blockHeight * 3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 8,
                          left: 4,
                          bottom: 8,
                          top: 8,
                        ),
                        child: CircleAvatar(
                          radius: SizeConfig.blockWidth * 6.5,
                          backgroundImage: const AssetImage(
                            'assets/images/5.jpeg',
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/8.png',
                        width: SizeConfig.blockWidth * 25,
                        fit: BoxFit.contain,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 6,
                          right: 10,
                          left: 10,
                          top: 24,
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.menu,
                            size: SizeConfig.blockWidth * 8,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockHeight * 1.1),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.poppins(
                            fontSize: SizeConfig.responsiveText(4.5),
                            color: Colors.black,
                          ),
                          children: const [
                            TextSpan(text: 'Hi, '),
                            TextSpan(
                              text: 'Amal',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: SizeConfig.blockHeight * 2),
              // Header
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockWidth * 1,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Coffee shop, tea & drinks...',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: SizeConfig.responsiveText(3.8),
                      color: Colors.black,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: SizeConfig.blockWidth * 5,
                    ),
                    suffixIcon: Icon(
                      Icons.filter_list,
                      size: SizeConfig.blockWidth * 6,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockHeight * 1.8,
                      horizontal: SizeConfig.blockWidth * 4,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        SizeConfig.blockWidth * 5,
                      ),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.blockHeight * 1.8),

              // Category Tabs
              SizedBox(
                height: SizeConfig.blockHeight * 6,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildCategoryChip('Coffee', true),
                    _buildCategoryChip('Tea', false),
                    _buildCategoryChip('Hot Drinks', false),
                    _buildCategoryChip('Cold Drinks', false),
                    _buildCategoryChip('Other Drinks', false),
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.blockHeight * 3),
              // Featured Items
              SizedBox(
                height: SizeConfig.blockHeight * 25,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildProductCard(
                      'Chai Latte',
                      '\$85.00',
                      'assets/images/10.png',
                      true,
                    ),
                    _buildProductCard(
                      'Matcha Latte',
                      '\$22.00',
                      'assets/images/11.png',
                      false,
                    ),
                    _buildProductCard(
                      'Red Eye Coffee',
                      '\$60.00',
                      'assets/images/12.png',
                      false,
                    ),
                  ],
                ),
              ),

              SizedBox(height: SizeConfig.blockHeight * 3),

              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockWidth * 1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Frozen Beverages',
                      style: GoogleFonts.poppins(
                        fontSize: SizeConfig.responsiveText(4),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'See All',
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF8B5E3C),
                        fontSize: SizeConfig.responsiveText(3.8),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.blockHeight * 1.2),
              // Frozen Beverages
              SizedBox(
                height: SizeConfig.blockHeight * 14,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildProductChip(
                      'Red Eye Coffee',
                      '\$60.00',
                      'assets/images/12.png',
                    ),
                    _buildProductChip(
                      'Matcha Lattee',
                      '\$22.00',
                      'assets/images/11.png',
                    ),
                    _buildProductChip(
                      'Chai Latte',
                      '\$85.00',
                      'assets/images/10.png',
                    ),
                  ],
                ),
              ),

              SizedBox(height: SizeConfig.blockHeight * 3),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockWidth * 1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Kava and Botteled Beverages',
                      style: GoogleFonts.poppins(
                        fontSize: SizeConfig.responsiveText(3.7),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'See All',
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF8B5E3C),
                        fontSize: SizeConfig.responsiveText(3.8),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.blockHeight * 1.2),
              SizedBox(
                height: SizeConfig.blockHeight * 14,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildProductChip(
                      'Matcha Lattee',
                      '\$22.00',
                      'assets/images/11.png',
                    ),
                    _buildProductChip(
                      'Chai Latte',
                      '\$85.00',
                      'assets/images/10.png',
                    ),
                    _buildProductChip(
                      'Red Eye Coffee',
                      '\$60.00',
                      'assets/images/12.png',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildCategoryChip(String label, bool selected) {
  return Container(
    margin: EdgeInsets.only(right: SizeConfig.blockWidth * 3),
    padding: EdgeInsets.symmetric(
      horizontal: SizeConfig.blockWidth * 4,
      vertical: SizeConfig.blockHeight * 1.8,
    ),
    decoration: BoxDecoration(
      color: selected ? const Color(0xFF4E342E) : Colors.grey.shade200,
      borderRadius: BorderRadius.circular(SizeConfig.blockWidth * 5),
    ),
    child: Text(
      label,
      style: GoogleFonts.poppins(
        color: selected ? Colors.white : Colors.black87,
        fontSize: SizeConfig.responsiveText(3.2),
      ),
    ),
  );
}

Widget _buildProductCard(
  String name,
  String price,
  String image,
  bool selected,
) {
  return Container(
    width: SizeConfig.blockWidth * 40,
    margin: EdgeInsets.only(right: SizeConfig.blockWidth * 2.8),
    padding: EdgeInsets.all(SizeConfig.blockWidth * 5),
    decoration: BoxDecoration(
      color: selected ? const Color(0xFF4E342E) : Colors.grey.shade100,
      borderRadius: BorderRadius.circular(SizeConfig.blockWidth * 5),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: SizeConfig.blockHeight * 8),
        SizedBox(height: SizeConfig.blockHeight * 1.5),
        Text(
          name,
          style: GoogleFonts.poppins(
            fontSize: SizeConfig.responsiveText(3.4),
            color: selected ? Colors.white : Colors.black87,
          ),
        ),
        Text(
          price,
          style: GoogleFonts.poppins(
            fontSize: SizeConfig.responsiveText(3),
            color: selected ? Colors.white70 : Color(0xFF8B5E3C),
          ),
        ),
      ],
    ),
  );
}

Widget _buildProductChip(String name, String price, String image) {
  return Container(
    width: SizeConfig.blockWidth * 50,
    margin: EdgeInsets.only(right: SizeConfig.blockWidth * 5),
    padding: EdgeInsets.all(SizeConfig.blockWidth * 2),
    decoration: BoxDecoration(
      color: Colors.grey.shade100,
      borderRadius: BorderRadius.circular(SizeConfig.blockWidth * 4),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: SizeConfig.blockHeight * 7.2),
        SizedBox(width: SizeConfig.blockWidth * 3),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              name,
              style: GoogleFonts.poppins(
                fontSize: SizeConfig.responsiveText(3.5),
              ),
            ),
            Text(
              price,
              style: GoogleFonts.poppins(
                fontSize: SizeConfig.responsiveText(2.8),
                color: const Color(0xFF8B5E3C),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
