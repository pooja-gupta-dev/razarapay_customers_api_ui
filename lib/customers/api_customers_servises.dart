import 'dart:convert';
import 'package:http/http.dart' as http;
class ApiCustomer{
  getData()async{
    var headers = {
      "Authorization": 'Basic ' +
    base64Encode(utf8.encode(
    '${'YourKEY'}:${'YourSECRET'}'))
    };
    var  response = await http.get(
      Uri.parse("https://api.razorpay.com/v1/orders"),
      headers:headers
    );
    if(response.statusCode == 200){
    print(response.body);
    }
    else{
      print(response.statusCode);
    }
  }
  postData(String name,String email,String contect) async{
    var hearders = {
      "Authorization": 'Basic ' +
          base64Encode(utf8.encode(
              '${'YourKEY'}:${'YourSECRET'}'))
    };
    var respons =await http.post(
      Uri.parse("https://api.razorpay.com/v1/orders"),
      headers: hearders,body: {
        "name":name,
      "email":email,
      "contrct":contect,
    });
    if (respons.statusCode == 200){
      print(respons.body);
    }
    else{
      print(respons.statusCode);
    }
    }
  }



