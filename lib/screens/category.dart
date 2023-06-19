import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                // Handle onTap for the first chip
              },
              child: Chip(
                label: Row(
                  children: [
                    Text('Mens'),
                    Image.asset('assets/images/shoe.jpg', height: 40),
                  ],
                ),
              ),
            ),
            SizedBox(width: 8),
            GestureDetector(
              onTap: () {
                // Handle onTap for the second chip
              },
              child: Chip(
                label: Row(
                  children: [
                    Text('Womens'),
                    Image.asset('assets/images/shoe.jpg', height: 40),
                  ],
                ),
              ),
            ),
            SizedBox(width: 8),
            GestureDetector(
              onTap: () {
                // Handle onTap for the third chip
              },
              child: Chip(
                label: Row(
                  children: [
                    Text('Kids'),
                    Image.asset('assets/images/shoe.jpg', height: 40),
                  ],
                ),
              ),
            ),
            SizedBox(width: 8),
            GestureDetector(
              onTap: () {
                // Handle onTap for the fourth chip
              },
              child: Chip(
                label: Row(
                  children: [
                    Text('Kid'),
                    Image.asset('assets/images/shoe.jpg', height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
