import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child:
               Padding(
                 padding: EdgeInsets.only(left: 16),
                 child: Container(
                  
                               decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 4,
                      )
                    ],
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                             ),
               ),
            ),
            SizedBox(width: 10,),
            Container(
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 4,
                  )
                ],
              ),
              child: IconButton(
                icon: Icon(Icons.sort_by_alpha),
                onPressed: () {},
              ),
            )
          ],
        )
      ],
    );
  }
}
