import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to settings
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/profile_background.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  left: MediaQuery.of(context).size.width / 2 - 50,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: const AssetImage('assets/profile_pic.png'),
                    child: IconButton(
                      icon: const Icon(Icons.camera_alt),
                      onPressed: () {
                        // Handle profile picture change
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
            ListTile(
              title: const Text('Lady Flora Bella'),
              subtitle: const Text('Delivery\nJinja City\n0700469320'),
              trailing: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  // Handle profile edit
                },
              ),
            ),
            const Divider(),
            const ListTile(
              title: Text('About'),
              subtitle: Text(
                'Hey there, hereat is Flora a human rights activist making my contribution count through food delivery with BiteBack',
              ),
              trailing: Icon(Icons.edit),
            ),
            const Divider(),
            const SizedBox(height: 20),
            Image.asset('assets/biteback_logo.png', height: 100),
            const Text(
              'Waste to Want',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
