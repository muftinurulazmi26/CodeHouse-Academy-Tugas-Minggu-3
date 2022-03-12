import 'package:crud_data_pemain_futsal/pages/about_page.dart';
import 'package:crud_data_pemain_futsal/pages/data_pemain_page.dart';
import 'package:crud_data_pemain_futsal/pages/riwayat_medis_page.dart';
import 'package:crud_data_pemain_futsal/widgets/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  int _currentIndex = 0;

  void selectedIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List pagesList = [
    DataPemainPage(),
    const RiwayatMedisPage(),
    const AboutPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pemain Futsal"),
        backgroundColor: accentColor1,
      ),
      body: pagesList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: selectedIndex,
        selectedItemColor: Colors.amberAccent,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(color: Colors.amberAccent),
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.accessibility_rounded,
              ),
              label: "Data Pemain"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
              ),
              label: "Riwayat Medis"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.info_outlined,
              ),
              label: "About"),
        ],
      ),
    );
  }
}
