import 'package:flutter/material.dart';

class AlertLearn extends StatefulWidget {
  const AlertLearn({super.key});

  @override
  State<AlertLearn> createState() => _AlertLearnState();
}

class _AlertLearnState extends State<AlertLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final response = await showDialog(
              context: context,
              builder: (context) {
                return _ImageZoomDialog();
              });
        },
      ),
      appBar: AppBar(),
    );
  }
}

class _ImageZoomDialog extends StatelessWidget {
  const _ImageZoomDialog({
    super.key,
  });
  final String _url = 'https://picsum.photos/200';
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      child: InteractiveViewer(
        child: Image.network(
          _url, 
          fit: BoxFit.cover, 
          height: 400),
        ),
    );
  }
}

class UpdateDialog extends AlertDialog {
  UpdateDialog({Key? key, required BuildContext context})
      : super(
          key: key,
          title: Text('Version Update!'),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: Text('Update')),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Close'))
          ],
        );
}
