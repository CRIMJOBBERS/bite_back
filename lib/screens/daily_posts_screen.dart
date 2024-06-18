import 'package:flutter/material.dart';

class DailyPostsScreen extends StatelessWidget {
  const DailyPostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Posts'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Search bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for articles...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                ),
              ),
            ),

            // Category filter dropdown
            DropdownButton<String>(
              items: const [
                DropdownMenuItem<String>(
                  value: 'All',
                  child: Text('All'),
                ),
                DropdownMenuItem<String>(
                  value: 'Food Waste Reduction',
                  child: Text('Food Waste Reduction'),
                ),
                DropdownMenuItem<String>(
                  value: 'Food Safety',
                  child: Text('Food Safety'),
                ),
              ],
              onChanged: (String? value) {
                // Update category filter based on selected value
              },
              hint: const Text('Select Category'),
            ),

            // List view of articles
            ListView.builder(
              shrinkWrap: true,
              itemCount: 10, // Replace with actual number of articles
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      // Handle article tap
                    },
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          // Article image (optional)
                          Image.network(
                            'https://placehold.it/300x200', // Replace with actual image URL
                          ),

                          // Article title
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'The ministry of health offers new prevention vaccines...',
                              style: TextStyle(fontSize: 16),
                              maxLines: 2,
                            ),
                          ),

                          // Article summary (optional)
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'This article discusses...',
                              maxLines: 2,
                            ),
                          ),

                          // Read More button
                          Align(
                            alignment: Alignment.bottomRight,
                            child: TextButton(
                              onPressed: () {
                                // Handle Read More button press
                              },
                              child: const Text('Read More'),
                            ),
                          ),
                        ],
                      ),
                    ),
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
