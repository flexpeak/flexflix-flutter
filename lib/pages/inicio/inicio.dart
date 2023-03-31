import 'package:flexflix_flutter/pages/featured/featured_screen.dart';
import 'package:flexflix_flutter/widgets/netflix_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> with TickerProviderStateMixin {
  int _currentIndex = 0;

  void _changeIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: TabBarView(
          controller: TabController(
            length: 4,
            vsync: this,
            initialIndex: _currentIndex,
          ),
          children: const [
            FeaturedScreen(),
            Center(
                child: Text(
              'Novidades',
              style: TextStyle(fontFamily: 'IBM'),
            )),
            Center(child: Text('Risadas Rápidas')),
            Center(child: Text('Downloads')),
          ],
        ),
        bottomNavigationBar: NetflixBottomNavigationBar(
          currentIndex: _currentIndex,
          changeIndex: _changeIndex,
        ),
      ),
    );
  }
}
