import 'package:flutter/material.dart';
import 'employeePortal.dart';
import 'homePage.dart';
import 'leaveApplicationsDetailsForEmployee.dart';
import 'advanceApplicationsDetailsForEmployee.dart';

class EmployeeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Colors.lightGreen[300],
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('images/image1.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.lightGreen[800],
              ),
              onLongPress: () {},
              title: Text(
                'Profile',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.file_copy,
                color: Colors.lightGreen[800],
              ),
              onLongPress: () {},
              title: Text(
                'Leave Applications',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.file_copy,
                color: Colors.lightGreen[800],
              ),
              onLongPress: () {
                //Do some Work
              },
              title: Text(
                'Advance Applications',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.center,
              child: Center(
                child: MaterialButton(
                  minWidth: 150,
                  elevation: 10,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  color: Colors.lightGreenAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  textColor: Colors.black,
                  child: Text(
                    'Sign Out',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
