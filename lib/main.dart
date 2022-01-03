import 'package:ab02009/pages/cart.dart';
import 'package:ab02009/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'pages/home.dart';

void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
  }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
     
      home: InitializerWidget(),
      
    );
  }
}

class InitializerWidget extends StatefulWidget {
  const InitializerWidget({ Key? key }) : super(key: key);

  @override
  _InitializerWidgetState createState() => _InitializerWidgetState();
}

class _InitializerWidgetState extends State<InitializerWidget> {
  late FirebaseAuth _auth;
  late User? _user;
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _auth = FirebaseAuth.instance;
    _user = _auth.currentUser;
    isLoading= false;
  }



  @override
  Widget build(BuildContext context) {
    return isLoading? Scaffold(
      body: Center(child: CircularProgressIndicator(),),
    ):_user == null ? Login(): Home();
  }
}