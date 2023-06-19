import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/category.dart';
import 'package:flutter_application_1/screens/constants.dart';
import 'package:flutter_application_1/screens/custom_appbar.dart';
import 'package:flutter_application_1/screens/productcard.dart';
import 'package:flutter_application_1/screens/search_bar.dart';
import 'package:flutter_application_1/slider/slider.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int _selectedIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomAppBar(),
                const SizedBox(height: 20),
                const SearchBar(),
                const SizedBox(height: 20),
                const ProductSlider(),
                const SizedBox(height: 20),
                const CategoryPage(),
                const SizedBox(height: 20),
                ProductGrid(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTabTapped,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: Colors.grey, 
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
      ),
      drawer: const Drawer(),
    );
  }
}
