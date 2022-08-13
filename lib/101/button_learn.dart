import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Text("Save", style: Theme.of(context).textTheme.subtitle1),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red)
            ),
            ),

          ElevatedButton(
            onPressed: null, 
            child: const Text("Data")),

          IconButton(
          onPressed: () {},
          icon: const Icon(Icons.abc_rounded)),

          FloatingActionButton(
            onPressed: () {},
            // servise istek at
            // sayfanın rengini düzenle
            child: const Icon(Icons.add)),

          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red,shape: CircleBorder(),padding: const EdgeInsets.all(10)),
            onPressed: () {},
            child: const Text("Data")),
            OutlinedButton.icon(onPressed: () {}, icon: Icon(Icons.abc), label: Text("Alofıs")),
          InkWell(
            child: const Text("custom"),
            onTap: () {}),

          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.black,shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
            onPressed: () {}, 
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40),
              child: Text(
                "Alocıs", 
                style: Theme.of(context).textTheme.headline4),
          )),

          Container(
            height: 200,
            color: Colors.white,
          )
        ],
      )
    );
  }
  
}

// Borders
// CircleBorder(), RoundedRectangleBorder()
