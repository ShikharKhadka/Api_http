import 'dart:convert';
import 'package:login/API/api.dart';
import 'package:login/Model/posts_model.dart';



class DataService{

  List<Posts_model>data= [];

  Future<List<Posts_model>> postData() async {
    var resp = await API().getData("/posts");
    var body = json.decode(resp.body);
    for (int i = 0; i < body.length; i++) {
      data.add(Posts_model.fromJson(body[i]));
    }
    return data;
  }


}
