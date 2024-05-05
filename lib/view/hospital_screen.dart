
import 'package:flutter/material.dart';

class HospitalScreen extends StatelessWidget {
  const HospitalScreen({Key? key}) : super(key: key);
  static String id = 'HospitalScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Image.asset('assets/images.jpeg'),
          SizedBox(width: 20,),
          Text('HospitalScreen'),
        ],
      ),
    );
  }
}
