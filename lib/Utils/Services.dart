import 'dart:convert';
import 'package:creativedesign/main.dart';
import 'package:http/http.dart' as http;
import 'package:creativedesign/Json_API/mysql_all_jsondata.dart';

class Services{
  static const Root = "http://192.168.225.35/Crud/Students_Action.php";
  static const GET_ALL_ACTION = "GET_ALL";
  static const ADD_STUDENT_ACTION = "ADD_STUDENT";
  static const UPDATE_STUDENT_ACTION = "UPDATE_STUDENT";
  static const DELETE_STUDENT_ACTION = "DELETE_STUDENT";

  // Craete The Crud Operation Methods
  // Get All Data In Database
  static Future<List<Student>> getStudent() async{
    try{
      var map = Map<String, dynamic>();
      map['action'] = GET_ALL_ACTION;
      final response = await http.post(Root,body: map);
      //print("Get All Response : ${response.body}");
      if(response.statusCode == 200){
        List<Student> list = parseResponse(response.body);
        return list;
      }else{
        return List<Student>();
      }
    }catch(e){
      return List<Student>();
    }
  }
  static List<Student> parseResponse(String responseBody){
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Student>((json)=>Student.fromJson(json)).toList();
  }

  // Add Student Data In Database
  static Future<String> addStudent(String name,String mobile, String email) async{
    try{
      var map = Map<String, dynamic>();
      map['action'] = ADD_STUDENT_ACTION;
      map['name'] = name;
      map['mobile'] = mobile;
      map['email'] = email;
      final response = await http.post(Root,body: map);
      print("Add Student Response : ${response.body}");
      if(response.statusCode == 200){
        return response.body;
      }else{
        return "Error";
      }
    }catch(e){
      return "Error";
    }
  }

  // Update Student Data In Databse
  static Future<String> updateStudent(String id,String name,String mobile, String email) async{
    try{
      var map = Map<String, dynamic>();
      map['action'] = UPDATE_STUDENT_ACTION;
      map['id'] = id;
      map['name'] = name;
      map['mobile'] = mobile;
      map['email'] = email;
      final response = await http.post(Root,body: map);
      print("Update Student Response : ${response.body}");
      if(response.statusCode == 200){
        return response.body;
      }else{
        return "Error";
      }
    }catch(e){
      return "Error";
    }
  }

  // Delete Student Data In Databse
  static Future<String> deleteStudent(String id) async{
    try{
      var map = Map<String, dynamic>();
      map['action'] = DELETE_STUDENT_ACTION;
      map['id'] = id;
      final response = await http.post(Root,body: map);
      print("Delete Student Response : ${response.body}");
      if(response.statusCode == 200){
        return response.body;
      }else{
        return "Error";
      }
    }catch(e){
      return "Error";
    }
  }

}