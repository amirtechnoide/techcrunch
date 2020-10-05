import 'package:flutter/material.dart';
import 'loginPage.dart';
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(

          children: [
            ListTile(
              leading: Icon(
                Icons.access_time,

              ),
              title: Text(
                  'DASBOARD'
              ),
            ),
            Card(
              color: Colors.deepPurple,
              child: ListTile(

                leading: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                title: Text(
                  'PERSONAL DETAILS(REQUIRED)',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(

                leading: Icon(
                  Icons.work,
                  color: Colors.black54,
                ),
                title: Text(
                    'WORK EXPERIENCE (OPTIONAL)'
                ),
              ),
            ),
            Card(

              child: ListTile(

                leading: Icon(
                  Icons.folder,
                  color: Colors.black54,
                ),
                title: Text(
                    'QUALIFICATION(OPTIONAL)'
                ),
              ),
            ),
            Card(
              child: ListTile(

                leading: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                title: Text(
                    'PARENT DETAIS(OPTIONAL)'
                ),
              ),
            ),
            Card(

              child: ListTile(

                leading: Icon(
                  Icons.folder,
                  color: Colors.black,
                ),
                title: Text(
                    'DOCUMENTS(OPTIONAL)'
                ),
              ),
            ),
            Card(

              child: ListTile(

                leading: Icon(
                  Icons.folder,
                  color: Colors.black,
                ),
                title: Text(
                    'CREATE APPLICATIONS(REQUIRED)'
                ),
              ),
            ),
            Card(

              child: ListTile(

                leading: Icon(
                  Icons.folder,
                  color: Colors.black,
                ),
                title: Text(
                    'APPLICATION FEES(REQUIRED)'
                ),
              ),
            ),
            ListTile(


              title: Center(
                child: Text(
                    'PAY & SUBMIT ALL(REQUIRED)'
                ),
              ),
            ),



          ],
        )
    );
  }
}
