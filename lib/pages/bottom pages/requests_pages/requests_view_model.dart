import 'dart:developer';

import 'package:flutter/material.dart';

import 'requests.dart';

abstract class RequestsViewModel extends State<Requests> {
  List requests = [];
  int indexSelect = 11;

  void setIndex(int valueIndex) {
    setState(() {
      indexSelect = indexSelect == valueIndex ? 11 : valueIndex;
    });
    log(indexSelect.toString());
  }
}
