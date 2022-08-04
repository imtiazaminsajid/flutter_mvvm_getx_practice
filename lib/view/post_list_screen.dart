import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx_practice/view_model/post_list_view_model.dart';
import 'widgets/post_list_item.dart';

class PostListScreen extends StatelessWidget {
  const PostListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PostListViewModel>(builder: (postListViewModel) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('MVVM with GetX'),
        ),
        body: postListViewModel.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: postListViewModel.postList.length,
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(0),
                itemBuilder: (BuildContext context, int index) {
                  return PostItem(aPost: postListViewModel.postList[index]);
                },
              ),
      );
    });
  }

}
