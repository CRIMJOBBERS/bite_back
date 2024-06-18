import 'package:flutter/material.dart';

class VolunteerTasksScreen extends StatelessWidget {
  const VolunteerTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Volunteer Teams'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Patrick Bella',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              'ID: 080025',
              style: TextStyle(fontSize: 16, color: Colors.redAccent),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Number of tasks
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          index % 2 == 0 ? 'Packaging' : 'Delivery',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text(
                            'Pack food items from Carol Restaurant, finish by 4pm'),
                        trailing: Text(
                          index % 3 == 0
                              ? 'Pending'
                              : index % 3 == 1
                                  ? 'Running'
                                  : 'Done',
                          style: TextStyle(
                            color: index % 3 == 0
                                ? Colors.brown
                                : index % 3 == 1
                                    ? Colors.blue
                                    : Colors.green,
                          ),
                        ),
                      ),
                      const Divider(),
                    ],
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle status update logic
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Background color
              ),
              child: const Text('Update Status'),
            ),
          ],
        ),
      ),
    );
  }
}
