import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bottom_nav_bar.dart';
import 'package:flutter_application_1/pages/cart_page.dart';
import 'package:flutter_application_1/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [

    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context)=> IconButton(
          icon: const Padding(
            padding: EdgeInsets.only(left: 12), 
            child: Icon(
              Icons.menu, 
              color: Colors.black,
              )
              ),
          
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        
            )
            ),
            ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children:[
                //logo
            DrawerHeader(child: Image.asset(
              'lib/asset/nikelogo.png',
              color: Colors.white,
              alignment: Alignment.center,
              ),
            ),
            // Divider(color: Colors.grey[800],)
            //other pages
            Padding(
              padding: const EdgeInsets.only(left:10),
              child:ListTile(
                leading: const Icon(Icons.home, color: Colors.white),
                title: const Text('Home', style: TextStyle(color: Colors.white),),
                onTap: () => Navigator.pushNamed(context, '/homepage'),
              )),
              Padding(
              padding: const EdgeInsets.only(left:10),
              child:ListTile(
                leading: const Icon(Icons.info, color: Colors.white),
                title: const Text('About', style: TextStyle(color: Colors.white),),
                onTap: () => Navigator.pushNamed(context, '/homepage'),
              )),
              Padding(
              padding: const EdgeInsets.only(left:10),
              child:ListTile(
                leading: const Icon(Icons.settings, color: Colors.white),
                title: const Text('Setting', style: TextStyle(color: Colors.white),),
                onTap: () => Navigator.pushNamed(context, '/homepage'),
              )),
              Padding(
              padding: const EdgeInsets.only(left:10),
              child:ListTile(
                leading: const Icon(Icons.logout, color: Colors.white),
                title: const Text('Logout', style: TextStyle(color: Colors.white),),
                onTap: () => Navigator.pushNamed(context, '/homepage'),
              )),
          ],
              )],
            ),
          ),
      
      body: _pages[_selectedIndex],
      );
  }
}
