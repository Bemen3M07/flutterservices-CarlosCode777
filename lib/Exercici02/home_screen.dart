import 'package:empty/Exercici02/pages/page1.dart';
import 'package:empty/Exercici02/pages/page2.dart';
import 'package:empty/Exercici02/pages/page3.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[

    const Page1(),
    const Page2(),
    const Page3(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _selectedIndex,

        onTap: (int index){
          setState(() {
            _selectedIndex = index;
          });
        },
        
        items: const [

            BottomNavigationBarItem(
            
            icon: Icon(Icons.home),

            label: 'Page 1',
            
            ),

            BottomNavigationBarItem(
            
            icon: Icon(Icons.business),

            label: 'Page 2',
            
            ),

            BottomNavigationBarItem(
            
            icon: Icon(Icons.school),

            label: 'Page 3',
            
            ),

        ],

      ),

    );
  }
}