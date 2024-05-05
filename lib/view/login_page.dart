import 'package:flutter/material.dart';
import 'package:medical_services/Widget/CustomButton.dart';
import 'package:medical_services/Widget/CustomTextField.dart';
import 'package:medical_services/constants.dart';
import 'package:medical_services/view/home_page.dart';
import 'package:medical_services/view/register_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  String? password;
  String? email;
  static String id = 'LoginPage';
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                CircleAvatar(
                  radius: 250,
                  backgroundImage: AssetImage(
                    'assets/VN-Asean-27-1024x637.jpg',
                  ),
                ),
                Text(
                  'Medical Services',
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                    fontFamily: 'Inter',
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 36,
                        color: Colors.white,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hint: 'Email',
                  onChanged: (data) {
                    email = data;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hidePassword: true,
                  hint: 'Password',
                  onChanged: (data) {
                    password = data;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: "Login",
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, HomePage.id);

                      // await LoginCubit()
                      //     .get(context)
                      //     .loginUser(email: email!, password: password!);
                    } else {}
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "don't have an account ?",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RegisterPage.id);
                      },
                      child: Text(
                        " Register",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// Column(
// children: [
// Container(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// SizedBox(
// height: 100,
// ),
// Image(
// width: double.infinity,
// height: 450,
// image: AssetImage('assets/VN-Asean-27-1024x637.jpg'),
// ),
// Padding(
// padding: const EdgeInsets.symmetric(
// horizontal: 35,
// vertical: 16,
// ),
// child: Text(
// 'Our Medical program will provide you with all the medical services that you need at any time and in any place',
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 25,
// ),
// ),
// ),
// ],
// )),
// ],
// )