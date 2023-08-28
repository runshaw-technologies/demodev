import 'package:alert/alert.dart';
import 'package:demo_application/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool hidePassword = true;

  checkValidity() {
    String email = _emailController.text;
    String password = _passwordController.text;

    if(email.isEmpty) {
      Alert(message: 'Please enter your email ID', shortDuration: true).show();
    } else if(password.isEmpty) {
      Alert(message: 'Please enter your password', shortDuration: true).show();
    } else {
      print("All data entered as : Email: $email and password: $password");
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const HomeScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Container(
          //   decoration: const BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage('assets/images/login.jpg'),
          //       fit: BoxFit.cover,
          //     )
          //   ),
          // ),



        Column(
          children: [
            Text("1"),
            Text("2"),
            Text("3")
          ],
        ),



        Container(
          child: Text("Qwerty")
        ),



















          Center(
            child: Padding(padding: EdgeInsets.all(20.0), 
            child: Column(
              children: [
                 const SizedBox(height: 80,),
                 const Icon(Icons.person, size: 50,color: Colors.black,),
                 const SizedBox(height: 5),
                 const Text('Login'),
                 TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const  InputDecoration(
                    labelText: 'Email ID',
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                 ),
                 const SizedBox(height: 20),
                 TextFormField(
                  controller: _passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  // property : value
                  obscureText: hidePassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    labelStyle: const TextStyle(color: Colors.black),
                    suffixIcon: IconButton(onPressed: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    }, icon: Icon(hidePassword ? Icons.visibility_off : Icons.visibility_rounded))
                  ),
                 ),
                 const SizedBox(height: 20),
                 ElevatedButton(onPressed: () {
                  print("-- Submit Button Clicked!! ");
                  checkValidity();
                 }, child: const Text('Submit')),
              ],
            ),),
          )
        ],
      ),
    );
  }
}