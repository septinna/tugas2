import 'package:flutter/material.dart';
import 'screens/landing_page.dart';
import 'screens/product_page.dart';
import 'screens/about_page.dart';
import 'screens/news_page.dart';
import 'components/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wireframe Website',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Navbar(
            onTap: _onItemTapped,
            selectedIndex: _selectedIndex,
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              physics: NeverScrollableScrollPhysics(),
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              children: [
                _NavbarlessPageWrapper(child: LandingPage()),
                _NavbarlessPageWrapper(child: ProductPage()),
                _NavbarlessPageWrapper(child: AboutPage()),
                _NavbarlessPageWrapper(child: NewsPage()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _NavbarlessPageWrapper extends StatelessWidget {
  final Widget child;

  const _NavbarlessPageWrapper({required this.child});

  @override
  Widget build(BuildContext context) {
    if (child is Scaffold) {
      final Scaffold scaffold = child as Scaffold;
      return scaffold.body ?? Container();
    }
    return child;
  }
}
