import 'package:employee_system/advanceApplicationForm.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';
import 'employeePortalDrawer.dart';
import 'leaveApplicationForm.dart';
import 'advanceApplicationsDetailsForEmployee.dart';

class EmployeePortal extends StatefulWidget {
  @override
  _EmployeePortalState createState() => _EmployeePortalState();
}

class _EmployeePortalState extends State<EmployeePortal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(''),
      ),
      drawer: EmployeeDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 200,
              color: Colors.amberAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: SizedBox(
                      height: 100,
                      width: 150,
                      child: RaisedButton(
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: Colors.lightGreenAccent,
                        splashColor: Colors.lightGreenAccent[100],
                        child: Text(
                          'Apply For Advance',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      AdvanceApplicationForm()));
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 150,
                    child: Container(
                      child: RaisedButton(
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: Colors.lightGreenAccent,
                        splashColor: Colors.lightGreenAccent[100],
                        child: Text(
                          'Apply For Leave',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      LeaveApplicationForm()));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
