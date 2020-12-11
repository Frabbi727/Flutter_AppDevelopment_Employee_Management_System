import 'package:flutter/material.dart';
import 'homePage.dart';
import 'employeePortalDrawer.dart';

class EmployeePortal extends StatefulWidget {
  @override
  _EmployeePortalState createState() => _EmployeePortalState();
}

class _EmployeePortalState extends State<EmployeePortal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      drawer: EmployeeDrawer(),
      body: Column(),
    );
  }
}
