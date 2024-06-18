import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'screens/welcome_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/sign_in_screen.dart';
import 'screens/reset_password_screen.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/volunteer_tasks_screen.dart';
import 'screens/requests_screen.dart'; // Add the requests screen import
import 'screens/daily_posts_screen.dart'; // Add the daily posts screen
import 'screens/donations_listing_screen.dart'; // Add the donations listing screen

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const BiteBackApp());
}

class BiteBackApp extends StatelessWidget {
  const BiteBackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BiteBack',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const WelcomeScreen(),
      routes: {
        '/register': (context) => const RegistrationScreen(), // Add the route for register screen
        '/sign-in': (context) => const SignInScreen(), // Add the route for sign In screen
        '/reset-password': (context) => const ResetPasswordScreen(), // Add the route for requests screen
        '/home': (context) => const HomeScreen(),// Add the route for home screen
        '/profile': (context) => const ProfileScreen(),// Add the route for profile screen
         '/requests': (context) => const RequestsScreen(), // Add the requests route
          '/tasks': (context) => const VolunteerTasksScreen(), // Add the route for volunteer tasks screen posts
           '/daily-posts': (context) => const DailyPostsScreen(), // Add the route for daily posts
             '/donate': (context) => const DonationsListingScreen(), // Add the route for donations listing
        //'/settings': (context) => const SettingsScreen(),
    
      },
    );
  }
}
