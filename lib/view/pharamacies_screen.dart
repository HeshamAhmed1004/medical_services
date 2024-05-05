
import 'package:flutter/material.dart';

class PharmaciesScreen extends StatelessWidget {
  const PharmaciesScreen({Key? key}) : super(key: key);
  static String id = 'PharmaciesScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Image.asset('assets/images.jpeg'),
          SizedBox(width: 20,),
          Text('PharmaciesScreen'),
        ],
      ),
    );
  }
}
