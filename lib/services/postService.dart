import 'package:taskdayone/models/postModel.dart';
import 'package:dio/dio.dart';

class PostService{
  String url="https://jsonplaceholder.typicode.com/posts";

  Future<List<Post>> getposts() async {
    // ignore: deprecated_member_use
    List<Post> posts= new List();
    Response response;
    Dio dio = new Dio();
    response = await dio.get(url);
    var data = response.data;
    print(data);
    data.forEach((value){
      posts.add(Post.fromJson(value));
    });
    return posts;
    
}} 