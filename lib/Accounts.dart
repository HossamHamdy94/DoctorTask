import 'package:dcotortask/account_model.dart';
import 'package:flutter/material.dart';

class Accounts with ChangeNotifier {

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
  bool _showDoctorsOnly = true ;
  bool _showPatientsonly = true;

  List<Account> get items {
      return [..._items];
    }

  List<Account> get getDoctors {
    return _items.where((acc) => acc.job== "Doctor").toList();
  }
  List<Account> get getPatient {
    return _items.where((acc) => acc.job== "patient").toList();
  }


    // Account findById(String name) {
    //   return _items.firstWhere((prod) => prod.name == name);
    // }
    //
    // // void showFavoritesOnly() {
    // //   _showDoctorsOnly = true;
    // //   notifyListeners();
    // // }
    // // //
    // // void showAll() {
    // //   _showDoctorsOnly = false;
    // //   notifyListeners();
    // // }


  }

