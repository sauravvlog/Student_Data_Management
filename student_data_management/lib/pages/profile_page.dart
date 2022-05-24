
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:student_data_management/linklist/students_linklist.dart';
import 'package:student_data_management/pages/add_student.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var linkedList = LinkedList<Student>();

    Data d = Data();
    linkedList = d.getdata();
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            "Student Database",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Theme.of(context).primaryColor,
                Theme.of(context).accentColor,
              ])),
        ),
        
      ),
      body: Container(
        child: ListView.builder(
            itemCount: linkedList.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 15,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Name:"),
                          Text(linkedList.elementAt(index).name),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Branch:"),
                          Text(linkedList.elementAt(index).branch),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Mobile:"),
                          Text(linkedList.elementAt(index).mobile),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Email:"),
                          Text(linkedList.elementAt(index).email),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("PRN number:"),
                          Text(linkedList.elementAt(index).prnnumber),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                Data data = Data();
                                data.deletdata(index);
                                setState(() {
                                  
                                });
                              },
                              child: Row(
                                children: [Icon(Icons.delete), Text("Delete")],
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
      // body:
      //     linkedList.length > 0 ? Text(linkedList.elementAt(0).) : Text("No Data"),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => AddStudentPage()),
            );
          }),
    );
  }
}
