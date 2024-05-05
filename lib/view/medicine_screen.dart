
import 'package:flutter/material.dart';

class MedicineScreen extends StatelessWidget {
  const MedicineScreen({Key? key}) : super(key: key);
  static String id = 'MedicineScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Image.asset('assets/images.jpeg'),
          SizedBox(width: 20,),
          Text('MedicineScreen'),
        ],
      ),
    );
  }
}
