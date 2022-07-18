// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coffeappui/util/coffe_tiles.dart';
import 'package:coffeappui/util/coffe_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //lista de tipos de café
  final List coffeeType = [
    //tipo de café selecionado
    [
      'Capuccino',
      false,
    ],
    [
      'Latte',
      true,
    ],
    [
      'Black',
      true,
    ],
    [
      'Tea',
      true,
    ],
  ];

//quando o usuario tocar nos tipos de café
  void coffeTypeSelected(int index) {
    setState((){
      // for para as seleções com false
      for(int i = 0; i < coffeeType.length; i++){
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Escolha o café que combina com você!",
              style: GoogleFonts.bebasNeue(
                fontSize: 40,
              ),
            ),
          ),
          SizedBox(height: 25),
          //Barra de pesquisa
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefix: Icon(Icons.search),
                hintText: "Encontre seu café ..",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),

          //SizedBox(height: 25),
          //Lista Horizontal de Tipoas de Café
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: coffeeType.length,
              itemBuilder: (context, index) {
                return CoffeTypes(
                  coffeTypes: coffeeType[index][0],
                  isSelected: coffeeType[index][1],
                  onTap: (){
                    coffeTypeSelected(index);
                  }
                );
              },
            ),
          ),

          //Lista Horizontal
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeTiles(
                  coffeeImagePath: 'images/img1.png',
                  coffeeName: 'Latte',
                  coffeePrice: '5,00',
                ),
                CoffeTiles(
                  coffeeImagePath: 'images/img2.png',
                  coffeeName: 'Capuccino',
                  coffeePrice: '8,00',
                ),
                CoffeTiles(
                  coffeeImagePath: 'images/img3.png',
                  coffeeName: 'Milk Special',
                  coffeePrice: '15,00',
                ),
                CoffeTiles(
                  coffeeImagePath: 'images/img4.png',
                  coffeeName: 'Cappuccino Italiano',
                  coffeePrice: '15,00',
                ),
                CoffeTiles(
                  coffeeImagePath: 'images/img5.png',
                  coffeeName: 'Milk Special',
                  coffeePrice: '15,00',
                ),
                CoffeTiles(
                  coffeeImagePath: 'images/img6.png',
                  coffeeName: 'Milk Special',
                  coffeePrice: '15,00',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
