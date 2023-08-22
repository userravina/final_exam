// To parse this JSON data, do
//
//     final instaModel = instaModelFromJson(jsonString);

import 'dart:convert';

class InstaModel {
  var status;
  var result;

  InstaModel({
    this.status,
    this.result,
  });

  factory InstaModel.fromJson(Map<String, dynamic> json) => InstaModel(
    status: json["status"],
    result: json["result"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "result": result,
  };
}
