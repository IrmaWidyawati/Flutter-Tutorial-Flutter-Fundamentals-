import 'dart:convert';
import 'package:http/http.dart' as http;

class Post {
  String id, title, body;

  Post({this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'].toString(),
      title: json['title'],
      body: json['body'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id.toString();
    data['title'] = this.title;
    data['body'] = this.body;
    return data;
  }

  static Future<List<Post>> connectToAPI(int start, int limit) async {
    final response = await http.get(Uri.parse(
        'https://jsonplaceholder.typicode.com/posts?_start=${start.toString()}&_limit=${limit.toString()}'));
    if (response.statusCode == 200) {
      List<dynamic> body = json.decode(response.body);
      return body.map((dynamic item) => Post.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load post');
    }
  }
}