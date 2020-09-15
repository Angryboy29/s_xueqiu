import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      // body: Column(
      //   children: <Widget>[
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //     Text('123', style: TextStyle(fontSize: 30, color: Color(0xFF3B7EEE))),
      //   ],
      // ),
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Item ${index + 1}')
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF3B7EEE),
        onTap: _onItemTapped,
      ),
    );
  }
}
