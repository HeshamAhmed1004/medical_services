import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SpecialistsScreen extends StatelessWidget {
   SpecialistsScreen({Key? key}) : super(key: key);
  static String id = 'SpecialistsScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) => specialistsList[index],
          separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
          itemCount: specialistsList.length),
    );
  }
}

class Specialists extends StatelessWidget {
   Specialists({super.key, required this.image, required this.title});
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Row(
        children: [
          Container(
            child: Image.asset(
              image,
              height: 100,
            ),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
          ),
          SizedBox(
            width: 40,
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
        ],
      ),
    );
  }
}

List<Specialists> specialistsList = [

  Specialists(image: 'assets/images.jpeg', title: "جلدية"),
  Specialists(image: 'assets/images.jpeg', title: "اسنان"),
  Specialists(image: 'assets/images.jpeg', title: "نفسي"),
  Specialists(image: 'assets/images.jpeg', title: "اطفال وحديث ولادة"),
  Specialists(image: 'assets/images.jpeg', title: "مخ واعصاب"),
  Specialists(image: 'assets/images.jpeg', title: "نساء وتوليد"),
  Specialists(image: 'assets/images.jpeg', title: "انف واذن وحنجرة"),
  Specialists(image: 'assets/images.jpeg', title: "قلب واوعية دموية"),
  Specialists(image: 'assets/images.jpeg', title: "بطني"),
  Specialists(image: 'assets/images.jpeg', title: "امراض الدم"),
  Specialists(image: 'assets/images.jpeg', title: "جراحة اطفال"),
  Specialists(image: 'assets/images.jpeg', title: "جراحة اورام"),
  Specialists(image: 'assets/images.jpeg', title: "جراحة تجميل"),
  Specialists(image: 'assets/images.jpeg', title: "جراحة عامه"),
  Specialists(image: 'assets/images.jpeg', title: "صدر وجهاز تنفسي"),
  Specialists(image: 'assets/images.jpeg', title: "علاج طبيعي واصابات ملاعب"),
  Specialists(image: 'assets/images.jpeg', title: "عيون"),
  Specialists(image: 'assets/images.jpeg', title: "مسالك بولية"),
  Specialists(image: 'assets/images.jpeg', title: "نطق وتخاطب"),
  Specialists(image: 'assets/images.jpeg', title: "سمعيات"),
  Specialists(image: 'assets/images.jpeg', title: "جهاز هضمي ومناظير"),
 
];
