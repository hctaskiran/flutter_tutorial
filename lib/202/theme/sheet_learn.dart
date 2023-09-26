import 'package:flutter/material.dart';

class SheetLearn extends StatefulWidget {
  const SheetLearn({super.key});

  @override
  State<SheetLearn> createState() => _SheetLearnState();
}

class _SheetLearnState extends State<SheetLearn> {
  Color _backgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.cyan,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await showModalBottomSheet(
            backgroundColor: Colors.white,
            barrierColor: Colors.transparent,
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))
            ),
            context: context, 
            builder: (context) {
              return _CustomSheet(backgroundColor: _backgroundColor);
            });
            if (result is bool) {
              setState(() {
                _backgroundColor = Colors.purple;
              });
            }
        },
        child: Icon(Icons.share),
        ),
    );
  }
}

class _CustomSheet extends StatefulWidget {
  const _CustomSheet({
    super.key,
    required Color backgroundColor,
  });

  @override
  State<_CustomSheet> createState() => _CustomSheetState();
}

class _CustomSheetState extends State<_CustomSheet> {
  Color _backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(
              color: Colors.black26, 
              thickness: 3, 
              indent: MediaQuery.of(context).size.width*0.45, 
              endIndent: MediaQuery.of(context).size.width*0.45
            ),
            Text('data'),
            Image.network('https://picsum.photos/200/300', height: 200),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _backgroundColor = Colors.amber;
                });
                Navigator.of(context).pop<bool>(true);
              }, 
              child: Text('ok'))
          ],
        ),
      ),
    );
  }
}