import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class NetflixBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) changeIndex;
  const NetflixBottomNavigationBar({super.key, required this.currentIndex, required this.changeIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(TablerIcons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(TablerIcons.squares_diagonal),
          label: 'Novidades',
        ),
        BottomNavigationBarItem(
          icon: Icon(TablerIcons.mood_smile),
          label: 'Risadas Rápidas',
        ),
        BottomNavigationBarItem(
          icon: Icon(TablerIcons.arrow_down_circle),
          label: 'Downloads',
        ),
      ],
      onTap: (index) => changeIndex(index),
    );
  }
}
