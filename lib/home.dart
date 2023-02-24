import 'package:flutter/material.dart';

  int index = 0;
  final list = [
    '/list',
    '/calendar'
  ];


class HomePage extends StatelessWidget {
  const HomePage({super.key});

void onTap(int newIndex)
{
  index = newIndex;
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: SizedBox(height: 55, child: BottomNavigationBar(
          backgroundColor: Color.fromARGB(120, 255, 0, 0),
          currentIndex: index,
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Список дел"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: "Календарь")
        ],
        onTap: (value){ 
          index = value; 
          onTap;
          Navigator.pushNamed(context, list[index]);
        }),
        ),
      )
    );
  }
}