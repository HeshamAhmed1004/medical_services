import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_services/view/emergency_screen.dart';
import 'package:medical_services/view/hospital_screen.dart';
import 'package:medical_services/view/login_page.dart';
import 'package:medical_services/view/medicine_screen.dart';
import 'package:medical_services/view/pharamacies_screen.dart';
import 'package:medical_services/view/specialists_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.cyan,
          title: Text(
            'Medical Services',
          ),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => categoryList[index],
            separatorBuilder: (context, index) => SizedBox(
                  height:5,
                ),
            itemCount: categoryList.length));
  }
}

class Category extends StatelessWidget {
   Category({Key? key, required this.image, required this.title, required this.route}) : super(key: key);
final String image;
final String  title;
final String  route;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 400,
        child: InkWell(
          onTap: (){
            Navigator.pushNamed(context,route );
          },
          child: Card(
            color: Colors.white,
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(color: Colors.white)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 5.0,
            child: Column(
              children: [
                Image.asset(image),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
List<Category> categoryList=[
  Category(image: "assets/images.jpeg", title: 'Specialist',route: SpecialistsScreen.id,),
  Category(image: "assets/images.jpeg", title: 'Hospitals',route: HospitalScreen.id,),
  Category(image: "assets/images.jpeg", title: 'Pharmacies',route: PharmaciesScreen.id,),
  Category(image: "assets/images.jpeg", title: 'Medicine',route: MedicineScreen.id,),
  Category(image: "assets/images.jpeg", title: 'Emergency',route: EmergencyScreen.id,),
];

