// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class CoffeTiles extends StatelessWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;

  CoffeTiles({
   required this.coffeeImagePath,
    required this.coffeeName,
    required this.coffeePrice,
});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
       child: Padding(
          padding: const EdgeInsets.only(left: 25.0, bottom: 25),
          child: Container(
            padding: EdgeInsets.all(12),
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[800],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //imagem café
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(coffeeImagePath),
                ),
                //nome do café
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        coffeeName,
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'com leite de amêndoa',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                //Preço

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('R\$' + coffeePrice),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.add),
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
