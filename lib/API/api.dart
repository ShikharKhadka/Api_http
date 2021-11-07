import 'dart:convert';
import 'package:http/http.dart'as http;

class API{

  String url = "https://jsonplaceholder.typicode.com";
  getData(apiUrl)async{
    var fullUrl = url + apiUrl;
    return http.get(Uri.parse(fullUrl),headers: _headers());
  }

  postData(String data,apiUrl)async{
    var fullUrl = url + apiUrl;
    return http.post(Uri.parse(fullUrl),body: data,headers: _headers());
  }

  _headers()=>{
    'Content-Type':'application/json',
    'Accept':'application/json'

  };
}
