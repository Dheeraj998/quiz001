import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz001/model/TestModel.dart';

Future readJson() async {
  List listData = [];
  print('jlkasdjlkajsd');
  final String response = await rootBundle.loadString('assets/quest1.json');
  final data = await json.decode(response);
  listData = data;
  return listData;
  // return listData;
  // final data = testModelFromJson2(jsonDecode(response));
  // return data;
  // print(data);
  // for (var d in data) {
  //   final _bodyAsJson = DataResp.fromJson(d);
  //   print('data data $_bodyAsJson');
  // }

  // return _bodyAsJson;
  // print(data.map((dataa) => DataResp.fromJson(dataa)).toList());
}
