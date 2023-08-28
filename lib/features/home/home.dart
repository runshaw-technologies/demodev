import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../signin/index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Homepage'),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const LoginScreen()));
            }, icon: const Icon(Icons.logout))
          ],
        ),
        body: Stack(
          children: const [
            Center(
              child: Text("This is the Homepage...."), 
            )
          ],
        ),
      ),
    );
  }
}