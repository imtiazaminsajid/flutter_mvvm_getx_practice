import 'package:get/get.dart';
import 'package:mvvm_getx_practice/view_model/post_list_view_model.dart';

class ViewModelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostListViewModel>(() => PostListViewModel(), fenix: true);
    // Get.lazyPut<SplashScreenController>(() => SplashScreenController(), fenix: true);
  }
}