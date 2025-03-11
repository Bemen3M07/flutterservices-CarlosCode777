import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: const Center(
    
        child: Text('Provider counter'),
    
      ),

      bottomNavigationBar: BottomNavigationBar(
        
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