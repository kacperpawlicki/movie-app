import 'package:flutter/material.dart';
import 'package:movie_app/core/widgets/placeholder_screen.dart';
import 'package:movie_app/features/favourites/presentation/screens/favourites_screen.dart';
import 'package:movie_app/features/home/presentation/screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [const HomeScreen(), const PlaceholderScreen(), const FavouritesScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MOVIE APP',
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.w900,
            fontSize: 30
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() {
          _currentIndex = index;
        }),
        selectedItemColor: Theme.of(context).colorScheme.primary,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search), 
            label: 'Search'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favourites',
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.only(left: 16, right: 16, top: 8),
        child: _screens[_currentIndex],
      ),
    );
  }
}
