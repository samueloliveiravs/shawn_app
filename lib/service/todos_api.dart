import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shawn_app/models/post.dart';

class TodosApi {
  Future<List<Post>> fetchTodos() async {
    var response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/todos'),
      headers: {'Content-Type': 'application/json', 'User-Agent': 'FlutterApp'},
    );

    List todosLista = await jsonDecode(response.body);

    return todosLista.map((post) => Post.fromJson(post)).toList();
  }
}
