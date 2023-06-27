import 'package:flutter/material.dart';
import 'package:targow/pages/cart/cart_page.dart';
import 'package:targow/pages/category/category.dart';
import 'package:targow/pages/home_page.dart';
import 'package:targow/pages/profile/profile_page.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;
 final List <Text> appbarTitle = [
   Text('Home'),
   Text('Category'),
   Text('Shopping Card'),
   Text('Profile '),
  ];
  final List<Widget> _children = [
    const HomePage(),
    const CategoryPage(),
    const CartPage(),
    const ProfilePage(),
  ];
  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        title:  appbarTitle[currentIndex],
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: _children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.tealAccent,
        currentIndex: currentIndex,
        selectedItemColor: Colors.blue[800],
        elevation: 1.0,
        selectedFontSize: 18,
        unselectedFontSize: 13,
        items: const [
          BottomNavigationBarItem(
            //I want to navigate to a new page Library();
            icon: Icon(Icons.home_filled,size: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            //I want to navigate to a new page Store();
            icon: Icon(Icons.widgets,size: 30),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            //I want to navigate to a new page Profile();
            icon: Icon(Icons.shopping_cart,size: 30),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            //I want to navigate to a new page Profile();
            icon: Icon(Icons.account_circle,size: 30,),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

