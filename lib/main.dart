import 'package:flutter/material.dart';
import 'package:medide/constants.dart';
import './screens/home_screen.dart';
import './screens/profile_screen.dart';
import './screens/appointment_screen.dart';
import './screens/payment_hist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medide',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: kMainPrimaryColor,
        scaffoldBackgroundColor: Color(0xFFF6F6FA),
        
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen(),
        '/appointment': (context) => AppointmentScreen(),
        '/payments': (context) => PaymentsScreen(),
      },
    );
  }
}
