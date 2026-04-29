class Post {
  final String title;
  final bool completed;

  Post({required this.title, required this.completed});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(title: json['title'], completed: json['completed']);
  }
}
