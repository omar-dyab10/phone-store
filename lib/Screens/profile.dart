import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    final String userName = user?.displayName ?? 'Guest User';
    final String userEmail = user?.email ?? 'Not Logged In';

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(
                  'assets/images/image.png',
                ), // Replace with user profile image if available
              ),
              SizedBox(height: 20),
              Text(
                userName,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(
                    255,
                    56,
                    58,
                    55,
                  ), // Dark gray for text
                ),
              ),
              SizedBox(height: 8),
              Text(
                userEmail,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600], // Slightly darker grey for email
                ),
              ),
              SizedBox(height: 40),
              Divider(color: Colors.grey[300], thickness: 1),
              SizedBox(height: 20),
              _buildProfileInfoRow(
                Icons.account_balance_wallet,
                'Balance',
                '\$1000',
              ),
              _buildProfileInfoRow(Icons.star, 'Rating', '4.5k'),
              _buildProfileInfoRow(Icons.shopping_bag, 'Orders', '10'),
              _buildProfileInfoRow(
                Icons.location_on,
                'Address',
                '123 Main St, City, Country',
              ),
              _buildProfileInfoRow(Icons.phone, 'Phone', '+1234567890'),
              _buildProfileInfoRow(
                Icons.calendar_today,
                'Member Since',
                'Jan 2023',
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Green button
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(12),
                  // ),
                ),
                child: const Text(
                  'Edit Profile',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileInfoRow(IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.green, size: 28),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromARGB(
                      255,
                      56,
                      58,
                      55,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
