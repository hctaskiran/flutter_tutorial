import 'package:flutter/material.dart';

class MyCollectionsDemo extends StatefulWidget {
  const MyCollectionsDemo({super.key});

  @override
  State<MyCollectionsDemo> createState() => _MyCollectionsDemoState();
}

class _MyCollectionsDemoState extends State<MyCollectionsDemo> {
  late List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = [
      CollectionModel(imagePath: "assets/png/emo_demo_collection.png", price: 3.5, title: "Emo Göz"),
      CollectionModel(imagePath: "assets/png/emo_demo_collection.png", price: 3.5, title: "Emo Göz v2"),
      CollectionModel(imagePath: "assets/png/emo_demo_collection.png", price: 3.5, title: "Emo Göz v3"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _items.length,
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemBuilder:(context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 20),
            child: SizedBox(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Expanded(child: Container(color: Colors.red ,child: Image.asset(_items[index].imagePath, fit: BoxFit.fill,)))
                    ,
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text(_items[index].title),
                        Text("${_items[index].price} eth"),
                      ],),
                    )
                  ],
                ),
              ),
            ),
          );
      },),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath, required this.price, required this.title});
}