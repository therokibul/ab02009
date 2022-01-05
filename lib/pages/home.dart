import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController boolController = TextEditingController();

  FirebaseFirestore addData = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: 'Name'),
            controller: nameController,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: 'Age'),
            controller: ageController,
          ),
          ElevatedButton(onPressed: () {
            FirebaseFirestore.instance.collection('data').add({
              'name': nameController.text,
              'Age': ageController.text,
            });
          }, child: Text('add Data')),
          Expanded(
            child: StreamBuilder(
                stream:
                    FirebaseFirestore.instance.collection('data').snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return ListView(
                      children: snapshot.data!.docs.map((document) {
                        return Card(
                          child: Column(
                            children: [
                              Text(
                                'Name:  ' + document['name'],
                                textScaleFactor: 2,
                              ),
                              Text(
                                'Age:  ' + document['Age'].toString(),
                                textScaleFactor: 2,
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    );
                  }
                }),
          ),
        ],
      ),
    );
  }
}
