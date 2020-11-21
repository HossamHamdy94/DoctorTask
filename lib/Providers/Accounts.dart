import 'file:///D:/apps/dcotortask/lib/Providers/account_model.dart';
import 'package:flutter/material.dart';

class Accounts with ChangeNotifier {

  List <Account> mylist =[    Account(
    name: 'Jone Doe',
    job: 'Doctor',
    rate: '4.7',
    distance: 29.99,
    imageUrl:
    'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
  ),
    Account(
      name: 'Jone Doe',
      job: 'Doctor',
      rate: '4.7',
      distance: 29.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Account(
      name: 'Jone Doe',
      job: 'patient',
      rate: '4.7',
      distance: 29.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Account(
      name: 'Ahmeed ',
      job: 'patient',
      rate: '4.7',
      distance: 29.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Account(
      name: 'maher',
      job: 'Doctor',
      rate: '4.7',
      distance: 29.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Account(
      name: 'Doe',
      job: 'Doctor',
      rate: '4.7',
      distance: 29.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),    Account(
      name: 'Jone Doe',
      job: 'patient',
      rate: '4.7',
      distance: 29.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),    Account(
      name: 'Jone Doe',
      job: 'Doctor',
      rate: '4.7',
      distance: 29.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
  ];

  List<Account> _items = [
    Account(
      name: 'Jone Doe',
      job: 'Doctor',
      rate: '4.7',
      distance: 29.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Account(
      name: 'Jone Doe',
      job: 'Doctor',
      rate: '4.7',
      distance: 29.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Account(
      name: 'Jone Doe',
      job: 'patient',
      rate: '4.7',
      distance: 29.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Account(
      name: 'Ahmeed ',
      job: 'patient',
      rate: '4.7',
      distance: 29.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Account(
      name: 'maher',
      job: 'Doctor',
      rate: '4.7',
      distance: 29.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Account(
      name: 'Doe',
      job: 'Doctor',
      rate: '4.7',
      distance: 29.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),    Account(
      name: 'Jone Doe',
      job: 'patient',
      rate: '4.7',
      distance: 29.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),    Account(
      name: 'Jone Doe',
      job: 'Doctor',
      rate: '4.7',
      distance: 29.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),

  ];

  List<Account> get items {
       mylist=[..._items];
      notifyListeners();
      return mylist ;
    }

  List<Account> get getDoctors {
     mylist=_items.where((acc) => acc.job== "Doctor").toList();
    notifyListeners();
     return mylist ;
  }
  List<Account> get getPatient {
      mylist=_items.where((acc) => acc.job== "patient").toList();
    notifyListeners();
      return mylist ;

  }






  }

