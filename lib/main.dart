import 'package:flutter/material.dart';
import 'package:medical_services/view/emergency_screen.dart';
import 'package:medical_services/view/home_page.dart';
import 'package:medical_services/view/hospital_screen.dart';
import 'package:medical_services/view/login_page.dart';
import 'package:medical_services/view/medicine_screen.dart';
import 'package:medical_services/view/pharamacies_screen.dart';
import 'package:medical_services/view/register_page.dart';
import 'package:medical_services/view/specialists_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginPage.id:(context) => LoginPage(),
        RegisterPage.id:(context) => RegisterPage(),
        HomePage.id:(context)=>HomePage(),
        SpecialistsScreen.id:(context) => SpecialistsScreen(),
        HospitalScreen.id:(context) => HospitalScreen(),
        PharmaciesScreen.id:(context) => PharmaciesScreen(),
        MedicineScreen.id:(context) => MedicineScreen(),
        EmergencyScreen.id:(context) => EmergencyScreen(),
      },
      initialRoute: LoginPage.id,
      debugShowCheckedModeBanner: false,
    );
  }
}

