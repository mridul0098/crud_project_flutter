import 'dart:convert';
import 'package:crud/Style/Style.dart';
import 'package:http/http.dart' as http;
Future<bool> ProductCreateRequest(FormValue)async {
  var URl=Uri.parse("https://crud.teamrabbil.com/api/v1/CreateProduct");
  var PostBody=json.encode(FormValue);
  var PostHeader={"content-type":"application/json"};

 var response= await http.post(URl,headers: PostHeader,body:PostBody );
 var ResultCode=response.statusCode;
 var ResulBody=json.decode(response.body);

 if(ResultCode==200 && ResulBody["status"]=="success"){
   SuccessTost("request success");
   return true;
 }
else{
   SuccessTost("request fail");
   return false;

 }

}