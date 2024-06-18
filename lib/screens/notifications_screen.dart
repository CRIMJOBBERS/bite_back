import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with actual number of notifications
        itemBuilder: (context, index) {
          return _buildNotificationItem(index); // Call a separate function
        },
      ),
    );
  }

  Widget _buildNotificationItem(int index) {
    // Determine the background color based on a flag (replace with logic)
    final bool isRead = index % 2 == 0; // Simulate read/unread for even indexes
    final Color? backgroundColor = isRead ? Colors.grey[200] : Colors.white;

    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.green,
        child: Text('B'), // Replace with initials or profile picture
      ),
      title: const Text('Thanks for joining BiteBack'),
      subtitle: const Text('Welcome on board on 13 Jun'),
      trailing: const Text('1:33 AM'),
      tileColor: backgroundColor, // Set background color
    );
  }
}
