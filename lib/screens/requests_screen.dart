import 'package:flutter/material.dart';

class RequestsScreen extends StatelessWidget {
  const RequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Requests'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Search bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for food items...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                ),
              ),
            ),

            // Filters
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Location filter
                DropdownButton<String>(
                  items: const [
                    DropdownMenuItem<String>(
                      value: 'Jinja City West',
                      child: Text('Jinja City West'),
                    ),
                    // Add other locations
                  ],
                  onChanged: (String? value) {
                    // Update location filter
                  },
                  hint: const Text('Location'),
                ),

                // Type of food filter
                DropdownButton<String>(
                  items: const [
                    DropdownMenuItem<String>(
                      value: 'All',
                      child: Text('All'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Chips and gravy',
                      child: Text('Chips and gravy'),
                    ),
                    // Add other food types
                  ],
                  onChanged: (String? value) {
                    // Update type of food filter
                  },
                  hint: const Text('Type'),
                ),
              ],
            ),

            // List view of available food items
            ListView.builder(
              shrinkWrap: true,
              itemCount: 10, // Replace with actual number of food items
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Food item description
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Chips and gravy',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            'Hot and Fresh',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            'Jinja City West',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),

                      // Delivery options
                      const Text(
                        'BiteBack',
                        style: TextStyle(color: Colors.green),
                      ),

                      // Request button
                      ElevatedButton(
                        onPressed: () {
                          // Handle request button press
                        },
                        child: const Text('Request'),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
