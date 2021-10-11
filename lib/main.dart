import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   title: Text(
        //     'Layout',
        //     style: TextStyle(color: Colors.black),
        //   ),
        // ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.close_outlined,
            ),
            Text(
              'Sign Up',
              style: TextStyle(fontSize: 40),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Login',
                style: TextStyle(color: Colors.green),
              ),
            )
          ],
        ),
        SizedBox(
          height: 200,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4.0))),
                labelText: 'Name'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4.0))),
                labelText: 'Email'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4.0))),
                labelText: 'Password'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextButton(
            style: TextButton.styleFrom(
                padding: EdgeInsets.all(16),
                primary: Colors.white,
                backgroundColor: Colors.green,
                textStyle: TextStyle(fontSize: 20)),
            onPressed: () {},
            child: Text('Sing Up'),
          ),
        ),
        TextButton(
          onPressed: null,
          child: Text('Forgot your password?'),
        )
      ],
    );
  }
}
