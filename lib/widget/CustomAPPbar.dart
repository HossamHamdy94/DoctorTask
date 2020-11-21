import 'package:dcotortask/Providers/Accounts.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class CustomAppBar extends StatelessWidget with PreferredSizeWidget {

  @override
  final Size preferredSize;
  final String title;
  CustomAppBar(
      this.title,
      { Key key,}) : preferredSize = Size.fromHeight(50.0),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    final AccountsData = Provider.of<Accounts>(context);
    var accounts =   AccountsData.items;
    return SafeArea(
      child: Container(height: 130, color: Colors.indigoAccent,
        child: Column(
          children: <Widget>[
             AppBar(
               backgroundColor: Colors.indigoAccent,
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
                                         accounts = AccountsData.getDoctors ;
                                         Navigator.pop(context);


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
                                          accounts = AccountsData.getPatient ;
                                          Navigator.pop(context);

                                        }),
                                      Text("Show Patients Only")
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      IconButton(
                                        icon: Icon(Icons.accessibility),
                                        onPressed: () {
                                          accounts=AccountsData.items;
                                          Navigator.pop(context);
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

            Container(child: Card(color: Colors.indigoAccent,child: TextField (style: TextStyle(color: Colors.white),decoration: InputDecoration(labelStyle: TextStyle( color:Colors.white),labelText:"Search by category" ,suffixIcon:Icon(Icons.search),))))



          ],
        ),
      ),
    );
  }
}