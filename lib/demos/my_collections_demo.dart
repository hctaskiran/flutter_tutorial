import 'package:flutter/material.dart';

class MyCollectionsDemo extends StatefulWidget {
  const MyCollectionsDemo({super.key});

  @override
  State<MyCollectionsDemo> createState() => _MyCollectionsDemoState();
}

class _MyCollectionsDemoState extends State<MyCollectionsDemo> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = CollectionItems()._items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _items.length,
        padding: PaddingUtility().paddingHorizon,
        itemBuilder:(context, index) {
          return _CategoryCard(model: _items[index]);
      },),
    );
  }
}




class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required CollectionModel model,
  }) : _model = model, super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility().paddingAll,
          child: Column(
            children: [
              Image.asset(
                _model.imagePath, 
                fit: BoxFit.fill,
                height: 230,
                width: 300,
                ),
                
              Padding(
                padding: PaddingUtility().paddingTop,
                child: Padding(
                  padding: PaddingUtility().paddingTop,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text(_model.title),
                    Text("${_model.price} eth"),
                  ],),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath, required this.price, required this.title});
}

class CollectionItems {
  late final List<CollectionModel> _items;

  CollectionItems(){
    _items = [
      CollectionModel(imagePath: ProjectItems.imageCollection, price: 3.5, title: "Emo Göz"),
      CollectionModel(imagePath: ProjectItems.imageCollection, price: 3.5, title: "Emo Göz v2"),
      CollectionModel(imagePath: ProjectItems.imageCollection, price: 3.5, title: "Emo Göz v3"),
    ];
  }
}

class ProjectItems {
  static const imageCollection = "assets/png/emo_demo_collection.png";
}

class PaddingUtility {
  
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddingBottom = const EdgeInsets.only(bottom: 20);
  final paddingAll = const EdgeInsets.all(15);
  final paddingHorizon = const EdgeInsets.symmetric(horizontal: 20);

}