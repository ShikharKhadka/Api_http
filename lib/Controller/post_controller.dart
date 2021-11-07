import 'package:get/get.dart';
import 'package:login/Model/posts_model.dart';
import 'package:login/Services/data_services.dart';

class PostController extends GetxController{
    var isLoading= true.obs;// update and change in UI
    var post = <Posts_model>[].obs;// empty list of data

    @override
    void onInit() {
      fetchfinalpost();
      super.onInit();
    }

    void fetchfinalpost()async{
      isLoading(true);
      var posts = await DataService().postData();
      if(post!=null){
        post.value = posts;//added data to empty list
      }
      else{
        isLoading;
      }
    }
}