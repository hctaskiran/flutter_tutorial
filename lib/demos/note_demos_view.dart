import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tutorial/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});
  final _title = "Create Your First Note";
  final _description = "Add a note";
  final _createNote = "Create a Note";
  final _importNotes = "Import Notes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.dark,),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().appleBook),
            _titleWidget(title: _title),
            Padding(padding: PaddingItems.verticalPadding, child: _subtitleWidget(title: _description*5)),
            _createButton(createNote: _createNote),
            _importButton(importNotes: _importNotes),
            SizedBox(height: ButtonHeights.buttonNormalHeight)],
          )
        ),
    );
  }
}

class _importButton extends StatelessWidget {
  const _importButton({
    Key? key,
    required String importNotes,
  }) : _importNotes = importNotes, super(key: key);

  final String _importNotes;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {}, child: Text(_importNotes));
  }
}

class _createButton extends StatelessWidget {
  const _createButton({
    Key? key,
    required String createNote,
  }) : _createNote = createNote, super(key: key);

  final String _createNote;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {

    }, child: SizedBox(height: ButtonHeights.buttonNormalHeight,child: Center(child: Text(_createNote,
    style: Theme.of(context).textTheme.headline5,
    ))));
  }
}

class _subtitleWidget extends StatelessWidget {
  const _subtitleWidget({Key? key, this.textAlign = TextAlign.center, required this.title,}) : super(key: key);
  final TextAlign? textAlign;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(
      color: Colors.black,
      fontWeight: FontWeight.w400
    ));
  }
}

class _titleWidget extends StatelessWidget {
  const _titleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline5?.copyWith(
        color: Colors.black,
        fontWeight: FontWeight.w800
      )
    );
  }
}

class PaddingItems {
 static final EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  static final EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);

}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}