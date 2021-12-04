import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'models/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: ProfileList(),
    );
  }
}

class ProfileList extends StatefulWidget {
  const ProfileList({Key? key}) : super(key: key);

  @override
  _ProfileListState createState() => _ProfileListState();
}

class _ProfileListState extends State<ProfileList> {
  Future getData() async {
    final response =
        await get(Uri.https('jsonplaceholder.typicode.com', 'users'));
    var responseData = jsonDecode(response.body);

    List users = [];


    for (var index in responseData) {
      User user = User(
        name: index['name'],
        username: index['username'],
        email: index['email'],
        phone: index['phone'],
      );

      users.add(user);
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: FutureBuilder(
            future: getData(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 250,
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: index % 2 == 0 ? Colors.green : Colors.red,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              snapshot.data[index].name,
                              textScaleFactor: 2,
                            ),
                            Text(
                              snapshot.data[index].username,
                              textScaleFactor: 1,
                            ),
                            Text(
                              snapshot.data[index].email,
                              textScaleFactor: 1,
                            ),
                            Text(
                              snapshot.data[index].phone,
                              textScaleFactor: 1,
                            ),
                          ],
                        ),
                      );
                    });
              }
            }),
      ),
    );
  }
}
