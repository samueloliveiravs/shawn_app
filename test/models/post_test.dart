import 'package:flutter_test/flutter_test.dart';
import 'package:shawn_app/models/post.dart';

void main() {
  test("Testando model POST", () {
    final json = {"title": "Algum titulo", "completed": true};

    final post = Post.fromJson(json);
    expect(post.title, equals("Algum titulo"));
    expect(post.completed, equals(true));
  });
}
