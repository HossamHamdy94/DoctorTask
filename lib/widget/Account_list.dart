import 'file:///D:/apps/dcotortask/lib/widget/List_item.dart';
import 'package:dcotortask/Providers/Accounts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Account_List extends StatelessWidget {
  bool showdoc ;
  bool showpatien ;

  Account_List (this.showdoc,this.showpatien);
  @override
  Widget build(BuildContext context) {
    final AccountsData = Provider.of<Accounts>(context);

    final accounts = showdoc ? AccountsData.getDoctors  :  (showpatien? AccountsData.getPatient : AccountsData.items) ;
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(10.0),
      itemCount: accounts.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: accounts[i],
        child: ListItem(
           accounts[i].name,
           accounts[i].job,
           accounts[i].imageUrl,
        ),
      ),

    );
  }
}