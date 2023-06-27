import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/202/service/post_model.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({super.key});

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {

  List<PostModel>? _items;
  String? name;

  @override
  void initState() { 
    super.initState();
    name = "hako";

    fetchPostItems();
  }

  Future<void> fetchPostItems() async {
    final response = await Dio().get("https://jsonplaceholder.typicode.com/posts");

    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index){
          return Text("alo");
        }
        
        ),
    );
  }
}