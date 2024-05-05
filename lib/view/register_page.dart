
import 'package:flutter/material.dart';
import 'package:medical_services/Widget/CustomButton.dart';
import 'package:medical_services/Widget/CustomTextField.dart';

class RegisterPage extends StatelessWidget {
  String? email;
  @override
  String? password;
  bool? isLoading = false;
  static String id = 'RegisterPage';

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
                      'Sign Up',
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
                  hint: 'Name',
                  onChanged: (data) {
                    email = data;
                  },
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
                  hint: 'Password',
                  onChanged: (data) {
                    password = data;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hint: 'Phone',
                  onChanged: (data) {
                    password = data;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: 'Register',
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      // RegisterCubit().get(context).RegisterUser(
                      //     email: email!, password: password!);
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "already have an account ?",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        " Login",
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
