import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {

  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  int _counter = 0;

  @override

  Widget build(BuildContext context) {

    return Center(

      child: Column(

        children: [

          Text(_counter.toString(), style: const TextStyle(fontSize: 50)),
          ElevatedButton(
            
            onPressed: (){

              setState(() {
                _counter++;
              });

          }, child: Text('Sumar'))

        ],
      ),
    );
  }

}