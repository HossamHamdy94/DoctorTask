
import 'package:flutter/material.dart';

class Account with ChangeNotifier {
  final String name;
  final String job;
  final double distance;
  final String rate;
  final String imageUrl;


  Account({
    @required this.name,
    @required this.job,
    @required this.distance,
    @required this.rate,
    @required this.imageUrl,

  });


}
