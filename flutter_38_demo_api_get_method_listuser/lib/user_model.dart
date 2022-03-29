    import 'dart:convert';
    import 'package:http/http.dart' as http;

class User{
String id;
String name;

//User({this.id, this.name});
User({required this.id, required this.name});

factory User.createUser(Map<String, dynamic> object) {
  return User(id: object['id'].toString(), name: object['first_name']+" "+ object['last_name']);
}


static Future<List<User>> getUsers(String page) async
{
  String apiURL = "https://reqres.in/api/users?page=" + page;
  
  //var apiResult = await http.get(apiURL);
  var apiResult = await http.get(Uri.parse(apiURL));
  var jsonObject = json.decode(apiResult.body);
  
  List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['data'];

  List<User> users = [];
  for (int i=0; i < listUser.length;i++)
    users.add(User.createUser(listUser[i]));

    return users;


}
}
