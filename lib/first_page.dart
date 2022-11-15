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
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: Colors.amber,
          
          primarySwatch: Colors.green,
          unselectedWidgetColor: Colors.purple
          
          

        ),
        child: BottomNavigationBar(
          currentIndex: selectedItem,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            selectedItem = index;
            setState(() {
              
            });
          },
          
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Ana Sayfa'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Ara'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Ekle'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), label: 'Profil')
          ],
        ),
      ),
    );
  }
}
