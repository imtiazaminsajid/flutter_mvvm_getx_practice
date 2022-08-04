import 'dart:convert';
import 'dart:developer';

import '../api_services/api_service.dart';
import '../api_services/base_service.dart';
import '../model/post.dart';
import '../utils/api_constants.dart';

class ApiRepository {
  final BaseService _apiService = ApiService();

  Future<List<Post>> fetchPostList() async {
    dynamic response = await _apiService.getGetResponse(ApiConstants.postList);
    List<Post> postList = [];
    response.forEach((v) {
      postList.add(Post.fromJson(v));
    });
    return postList;
  }
}
