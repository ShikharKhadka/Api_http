import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/Controller/post_controller.dart';
import 'package:login/Services/data_services.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  final DataService _dataservice = new DataService();
  final PostController _controller = Get.put(PostController());


  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Post"),
      ),
      body: Obx((){
        if(_controller.isLoading.isFalse){
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return
          Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: ListView.builder(
              itemCount: _controller.post.length,
              itemBuilder: (context,index){
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10,),
                    Container(
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey,
                      ),
                      child: ListTile(
                        title: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Expanded(flex:1,child: Text("Email:")),
                                Expanded(flex:4,child:Text(_controller.post[index].title.toString()),),

                                //Text(_data[index].body),

                              ],
                            ),
                            const SizedBox(height: 10),
                            const Divider(color: Colors.white,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Expanded(flex:1,child: Text("Body:")),
                                Expanded(flex:4,child:Text(_controller.post[index].body.toString()),),

                                //Text(_data[index].body),

                              ],
                            ),

                          ],
                        ),

                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        );

      }),
    );
  }
}
