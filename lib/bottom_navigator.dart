import 'package:flutter/material.dart';
import 'package:nft_digital_artworks/cart_screen.dart';
import 'package:nft_digital_artworks/constant/color_constant.dart';
import 'package:nft_digital_artworks/favorite_screen.dart';
import 'package:nft_digital_artworks/person_screen.dart';
import 'home_screen.dart';
class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    FavoriteScreen(),
    CartScreen(),
    PersonScreen(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home',
            backgroundColor: ColorConstant.gray,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.favorite),
            label: 'Favorite',
            backgroundColor: ColorConstant.gray,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.shopping_cart_sharp),
            label: 'Cart',
            backgroundColor: ColorConstant.gray,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: 'Person',
            backgroundColor: ColorConstant.gray,
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorConstant.iconColor,
        onTap: _onItemTapped,
        unselectedItemColor: ColorConstant.white,
      ),
    );
  }
}
