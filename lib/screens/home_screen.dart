import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BiteBack'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      // Handle search
                    },
                  ),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.person),
                    onPressed: () {
                      // Navigate to profile
                      Navigator.pushNamed(context, '/profile');
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.shopping_cart),
                    onPressed: () {
                      // Handle shopping cart
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'FoodStuff',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              children: <Widget>[
                _buildGridItem('assets/food1.png', 'Food Item 1'),
                _buildGridItem('assets/food2.png', 'Food Item 2'),
                _buildGridItem('assets/food3.png', 'Food Item 3'),
                _buildGridItem('assets/food4.png', 'Food Item 4'),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Food Waste',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              children: <Widget>[
                _buildGridItem('assets/food5.png', 'Food Waste 1'),
                _buildGridItem('assets/food6.png', 'Food Waste 2'),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Live supplies',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              children: <Widget>[
                _buildGridItem('assets/supply1.png', 'Ishaka'),
                _buildGridItem('assets/supply2.png', 'Mbarara'),
                _buildGridItem('assets/supply3.png', 'Mbale'),
                _buildGridItem('assets/supply4.png', 'Jinja'),
                _buildGridItem('assets/supply5.png', 'Central'),
                _buildGridItem('assets/supply6.png', 'Lugogo'),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Requests',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Dailyposts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Donate',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/home');
              break;
            case 1:
              Navigator.pushNamed(context, '/requests');
              break;
            case 2:
              Navigator.pushNamed(context, '/donate');
              break;
            case 3:
              Navigator.pushNamed(context, '/tasks');
              break;
            case 4:
              _showMenu(context);
              break;
          }
        },
      ),
    );
  }

  Widget _buildGridItem(String imagePath, String title) {
    return GestureDetector(
      onTap: () {
        // Handle item click
      },
      child: Card(
        child: Column(
          children: <Widget>[
            Image.asset(imagePath, height: 100),
            Text(title),
          ],
        ),
      ),
    );
  }

  void _showMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            ListTile(
              leading: const Icon(Icons.directions_run),
              title: const Text('Volunteer Tasks'),
              onTap: () {
                Navigator.pushNamed(context, '/tasks');
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text('Donations'),
              onTap: () {
                Navigator.pushNamed(context, '/donate');
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text('Requests'),
              onTap: () {
                Navigator.pushNamed(context, '/requests');
              },
            ),
          ],
        );
      },
    );
  }
}
