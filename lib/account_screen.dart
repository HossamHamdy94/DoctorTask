import 'package:dcotortask/widget/CustomAPPbar.dart';
import 'package:flutter/material.dart';

import 'widget/Account_list.dart';



class Account_Screen extends StatefulWidget {
  static const routeName = 'Account_Screen';

  @override
  _Account_Screen createState() => _Account_Screen();
}

class _Account_Screen extends State<Account_Screen> {

  _Account_Screen ()
;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(150),child: CustomAppBar ("Accounts")),
      body: Column(  mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Card(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Doctor",
                    style: TextStyle(fontSize: 20, color: Theme.of(context).primaryColor),
                  ),
                  Text("CardView",
                      style: TextStyle(fontSize: 20, color: Theme.of(context).primaryColor))
                ],
              ),
            ),
          ),
          Expanded(child: Account_List())
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

