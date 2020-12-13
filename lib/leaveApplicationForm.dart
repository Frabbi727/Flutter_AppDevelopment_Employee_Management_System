import 'package:flutter/material.dart';
import 'employeePortal.dart';

class LeaveApplicationForm extends StatefulWidget {
  @override
  _LeaveApplicationFormState createState() => _LeaveApplicationFormState();
}

class _LeaveApplicationFormState extends State<LeaveApplicationForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Leave Application Form'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  decoration: (BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  )),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      labelText: 'Start Date',
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(
                        Icons.date_range,
                        color: Colors.lightGreen[800],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: (BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  )),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      labelText: 'End Date',
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(
                        Icons.date_range_rounded,
                        color: Colors.lightGreen[800],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: (BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  )),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      labelText: ' Reason ',
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(
                        Icons.text_fields,
                        color: Colors.lightGreen[800],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: (BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  )),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      labelText: ' Apply Date ',
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(
                        Icons.date_range_outlined,
                        color: Colors.lightGreen[800],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: RaisedButton(
                        elevation: 10,
                        color: Colors.lightGreenAccent,
                        splashColor: Colors.white,
                        child: Text(
                          'Save As Draft',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          //Do something Here
                        },
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: RaisedButton(
                        elevation: 10,
                        color: Colors.lightGreenAccent,
                        splashColor: Colors.white,
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EmployeePortal()));
                        },
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
