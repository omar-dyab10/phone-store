import 'package:flutter/material.dart';
import 'package:phone_store/Screens/favorite.dart';
import 'package:phone_store/Screens/home_content.dart';
import 'package:phone_store/Screens/profile.dart';
import 'Smart_phones.dart';
import 'accessories.dart';
import 'chargers.dart';
import 'headphone.dart';
import 'register.dart';
import 'login.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Added Firebase Auth import

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var index = 0;
  List<Widget> screens = [HomeContent(), Favorite(), Profile()];

  @override
  Widget build(BuildContext context) {
    // Get the current user from Firebase Auth
    final user = FirebaseAuth.instance.currentUser;
    final bool isLoggedIn = user != null;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 246, 247),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 80, 116, 52),
                ),
                accountName: Text(isLoggedIn ? (user.displayName ?? 'Guest User') : 'Guest User'), // Display username or email
                accountEmail: Text(isLoggedIn ? user.email ?? '' : 'Not Logged In'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/image.png'),
                ),
              ),
              // Conditionally display Login and Sign Up
              if (!isLoggedIn)
                ListTile(
                  leading: const Icon(Icons.login),
                  title: const Text('Login'),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                ),
              if (!isLoggedIn)
                ListTile(
                  leading: const Icon(Icons.person_add),
                  title: const Text('Sign Up'),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  },
                ),
              ListTile(
                leading: const Icon(Icons.phone_android),
                title: const Text('Smartphones'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Smartphones()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.extension),
                title: const Text('Accessories'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Accessories()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.battery_charging_full),
                title: const Text('Chargers & Batteries'),
                onTap: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => Chargers()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.headphones),
                title: const Text('Headphones & Earphones'),
                onTap: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => Headphone()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.watch),
                title: const Text('Smart Gadgets'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.sd_storage),
                title: const Text('Storage & Memory'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
              ),
              SizedBox(height: 100),
              ListTile(
                leading: const Icon(Icons.star),
                title: const Text('Best Sellers'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.local_offer),
                title: const Text('Deals & Discounts'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
              ),
              // Conditionally display Logout
              if (isLoggedIn)
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Logout'),
                  onTap: () async { 
                    await FirebaseAuth.instance.signOut();
                    if (!context.mounted) return; 
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen())); 
                  },
                ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 245, 246, 247),
        centerTitle: true,
        title: const Text(
          'Phone Store',
          style: TextStyle(
            color: Colors.green,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Times New Roman',
          ),
        ),
        actions: [
          PopupMenuButton<String>(
            icon: Icon(Icons.notification_add_outlined),
            onSelected: (value) {},
            itemBuilder:
                (BuildContext context) => [
                  PopupMenuItem(value: '', child: Text("Notification 1")),
                  PopupMenuItem(value: '', child: Text("Notification 2")),
                  PopupMenuItem(value: '', child: Text("Notification 3")),
                ],
          ),
        ],
      ),
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (int newIndex) {
          setState(() {
            index = newIndex;
          });
        },
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.green,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}


