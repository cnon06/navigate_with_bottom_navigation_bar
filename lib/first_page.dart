import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: const Center(
        child: Text("Hello World"),
      ),
      bottomNavigationBar: BottomNavigationBar(
       fixedColor: Colors.brown,
        // unselectedLabelStyle: TextStyle(color: Colors.brown),
        unselectedItemColor: Colors.blue,
        currentIndex: selectedItem,
        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          selectedItem = index;
          setState(() {
            
          });
        },
        
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Ana Sayfa', backgroundColor: Colors.purple),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Ara', backgroundColor: Colors.orange),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Ekle', backgroundColor: Colors.green, activeIcon: Icon(Icons.add, color: Colors.amber,)),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: 'Profil', backgroundColor: Colors.red)
        ],
      ),
    );
  }
}
