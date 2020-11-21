import 'package:flutter/material.dart';

import 'widget/Account_list.dart';

enum FilterOptions {
  patients,
  Doctor,
  All,
}

class Account_Screen extends StatefulWidget {
  static const routeName = 'Account_Screen';

  @override
  _Account_Screen createState() => _Account_Screen();
}

class _Account_Screen extends State<Account_Screen> {
  bool showdoctors = false;

  bool showpatient = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Accounts'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.menu,
            ),
          ),
          IconButton(
            onPressed: () => showModalBottomSheet(
                context: context,
                builder: (_) {
                  return Scaffold(
                    body: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Clear"),
                            Text(
                              "SortBy",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            Text("Done"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(
                                    Icons.location_on,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      showdoctors = true;
                                      showpatient = false;
                                    });
                                  },
                                ),
                                Text("Show Doctors Only")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.star),
                                  onPressed: () {
                                    setState(() {
                                      showdoctors = false;
                                      showpatient = true;
                                    });
                                  },
                                ),
                                Text("Show Patients Only")
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.accessibility),
                                  onPressed: () {
                                    setState(() {
                                      showpatient = false;
                                      showdoctors = false;
                                    });
                                  },
                                ),
                                Text("Show  ALL")
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[],
                        ),
                      ],
                    ),
                  );
                }),
            icon: Icon(
              Icons.find_in_page,
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Doctor",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                  Text("CardView",
                      style: TextStyle(fontSize: 15, color: Colors.blue))
                ],
              ),
            ),
          ),
          Expanded(child: Account_List(showdoctors, showpatient))
      ,





        ],
      ),

      bottomNavigationBar: BottomNavigationBar(



        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarms),
            title:  Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title:  Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title:  Text(''),
          ),


        ],
        //currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
     //   onTap: _onItemTapped,
      ),
    );
  }
  }

