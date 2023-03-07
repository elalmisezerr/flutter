import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:kariyer_hedefim/components/button.dart';
import 'package:kariyer_hedefim/components/square.dart';
import 'package:kariyer_hedefim/components/textfield.dart';
import 'package:kariyer_hedefim/validation/login_validation.dart';

import 'models/Person.dart';

class LoginPage2 extends StatefulWidget {
  LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> with Loginvalidationmixin {
  final userNameController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  List<Person> persons=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Form(
              key: formKey,
              child: ListView(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: govde(),
              ),
            ),
          ),
        ));
  }

  List<Widget> govde() {
    return [
      SizedBox(
        height: 25,
      ),
      // logo
      Icon(
        Icons.lock,
        size: 100,
      ),
      SizedBox(
        height: 25,
      ),
      // welcome back, you've been missed
      Center(
        child: Text(
          "Kariyer Hedefim Uygulamasına Hoşgeldiniz!",
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 16,
            
          ),
        ),
      ),
      // username textfield
      MyTextField(
        validator: validateUserName,
        controller: userNameController,
        hintText: "Username",
        obscureText: false,
      ),
      // password textfield
      MyTextField(
        validator: validatePassword,
        controller: passwordController,
        hintText: "Password",
        obscureText: true,
      ),
      // forgot password?
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Parolanızı mı unuttunuz?",
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 25,
      ),
      // sign in button
      MyButton(onTap: girisYap),

      SizedBox(
        height: 25,
      ),
      //or continue with
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          children: [
            Expanded(
                child: Divider(
              thickness: 0.5,
              color: Colors.grey[500],
            )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "Or continue with",
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
            Expanded(
                child: Divider(
              thickness: 0.5,
              color: Colors.grey[400],
            ))
          ],
        ),
      ),
      SizedBox(
        height: 25,
      ),
      // google+ apple sign in buttons
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [SquareTile(imagePath: 'assect/images/google.png')],
      ),

      const SizedBox(
        height: 25,
      ),

      // not a member? register now
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Üye değil misiniz?"),
          const SizedBox(
            width: 4,
          ),
          const Text(
            "Kayıt ol",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ],
      )
    ];
  }

  void girisYap() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      loginChecker();
      saveStudent();
    }
  }

  void saveStudent() {
    print("çalıştı");
  }

  void loginChecker() {
    //for( );
  }
}
