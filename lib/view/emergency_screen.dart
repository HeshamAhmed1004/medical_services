
import 'package:flutter/material.dart';

class EmergencyScreen extends StatelessWidget {
  const EmergencyScreen({Key? key}) : super(key: key);
  static String id = 'EmergencyScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Image.asset('assets/images.jpeg'),
          SizedBox(width: 20,),
          Text('EmergencyScreen'),
        ],
      ),
    );
  }
}
