import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Screen/model/insta_model.dart';

class Api_helper {

  Future<InstaModel> uidget() async {
    String like = "https://instagram174.p.rapidapi.com/api/v1/user/hk_2704/id";
    var responce = await http.get(Uri.parse(like), headers: {
      "X-RapidAPI-Key": "27460d3920mshc19a221d088ec6cp14ef03jsn3bdbd1b46850",
      "X-RapidAPI-Host": "instagram174.p.rapidapi.com"
    });
    var json = jsonDecode(responce.body);

    InstaModel data = InstaModel.fromJson(json);

    return data;
  }

  void  gettwo()
  {

  }

}
