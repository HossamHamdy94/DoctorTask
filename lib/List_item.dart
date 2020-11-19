import 'package:dcotortask/Accounts.dart';
import 'package:dcotortask/account_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListItem extends StatelessWidget {
  final String Name;
  final String Job;
  final String imageUrl;

  ListItem(this.Name, this.Job, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final account = Provider.of<Account>(context, listen: false);

    return Card(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(30.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 8.0),
                          child: Text(Name),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 5.0),
                          child: Text(Job,style:TextStyle(color: Colors.black45),),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 15, top: 3.0),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.location_on,color: Colors.blue),
                                Text(account.distance.toString(),
                                style: TextStyle(color: Colors.black45),)
                              ],
                            )),
                      ],
                    ),
                  ]),
                ]),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row (children: <Widget>[  Icon(Icons.star ,color: Colors.blue,),
                      Text(account.rate.toString(),
                        style: TextStyle(color: Colors.blue))
                    ],),

                  ],
                )
              ],
            ),
        Padding(
          padding: const EdgeInsets.only(top:30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            Icon(Icons.camera,color: Colors.blue),
              Row (children: <Widget>[
                Icon(Icons.markunread_mailbox,color: Colors.grey),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Icon(Icons.chat_bubble,color: Colors.blue),
            )

              ],)
          ],),
        )  ],
        ),
      ),
    );
  }
}
