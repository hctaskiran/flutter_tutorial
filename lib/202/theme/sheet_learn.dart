import 'package:flutter/material.dart';
import 'package:flutter_tutorial/202/image_learn_202.dart';

class SheetLearn extends StatefulWidget {
  const SheetLearn({super.key});

  @override
  State<SheetLearn> createState() => _SheetLearnState();
}

class _SheetLearnState extends State<SheetLearn> with ProductSheet {
  Color _backgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.cyan,
      body: Center(
        child: TextButton(onPressed: () {
          showCustomSheet(context, ImageLearn202());
        }, child: Text('Show')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await showModalBottomSheet(
              backgroundColor: Colors.white,
              barrierColor: Colors.transparent,
              isScrollControlled: true,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
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
  final _gripHeight = 30.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: _gripHeight,
              child: Stack(
                children: [
                  Divider(
                      color: Colors.black26,
                      thickness: 3,
                      indent: MediaQuery.of(context).size.width * 0.45,
                      endIndent: MediaQuery.of(context).size.width * 0.45),
                  Positioned(
                    right: 0,
                    height: 10,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.close)),
                  )
                ],
              ),
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

mixin ProductSheet {
  Future<T?> showCustomSheet<T>(BuildContext context, Widget child) async {
    return showModalBottomSheet<T>(
        backgroundColor: Colors.white,
        barrierColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        context: context,
        builder: (context) {
          return _CustomMainSheet(child: child);
        });
  }
}


class _CustomMainSheet extends StatelessWidget {
  const _CustomMainSheet({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Color _backgroundColor = Colors.white;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _BaseSheetHeader(),
            Expanded(child: child,)
          ],
        ),
      ),
    );
  }
}

class _BaseSheetHeader extends StatelessWidget {
  const _BaseSheetHeader({
    Key? key,
  }) : _gripHeight = 30,
    super(key: key);

    final double _gripHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _gripHeight,
      child: Stack(
        children: [
          Divider(
              color: Colors.black26,
              thickness: 3,
              indent: MediaQuery.of(context).size.width * 0.45,
              endIndent: MediaQuery.of(context).size.width * 0.45),
          Positioned(
            right: 0,
            height: 10,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close)),
          )
        ],
      ),
    );
  }
}
