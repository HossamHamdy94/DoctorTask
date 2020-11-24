import 'file:///D:/apps/dcotortask/lib/Providers/account_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final account = Provider.of<Account>(context, listen: false);
    Color mycolor = Theme.of(context).primaryColor ;
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
                      backgroundImage: NetworkImage(account.imageUrl),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 8.0),
                          child: Text(account.name),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 5.0),
                          child: Text(account.job,style:TextStyle(color: Colors.black45),),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 15, top: 3.0),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.location_on,color: mycolor),
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
                    Row (children: <Widget>[  Icon(Icons.star ,color: mycolor,),
                      Text(account.rate.toString(),
                        style: TextStyle(color: mycolor))
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
            Icon(Icons.camera,color: mycolor),
              Row (children: <Widget>[
                Icon(Icons.markunread_mailbox,color: Colors.grey),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Icon(Icons.chat_bubble,color: mycolor),
            )

              ],)
          ],),
        )  ],
        ),
      ),
    );
  }
}
