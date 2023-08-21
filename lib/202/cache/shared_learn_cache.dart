import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLearn extends StatefulWidget {
  const SharedLearn({super.key});

  @override
  _SharedLearnState createState() => _SharedLearnState();
}

class _SharedLearnState extends LoadingStateful<SharedLearn> {
  int _currentValue = 0;

  @override
  void initState() {
    super.initState();
    getDefaultValues();
  }

  Future<void> getDefaultValues() async {
    final prefs = await SharedPreferences.getInstance();
    final int? counter = prefs.getInt('counter');
    _onChangeValue(counter.toString());
  }

  void _onChangeValue(String value) {
    final _value = int.tryParse(value);
    if (_value != null) {
      setState(() {
        _currentValue = _value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_currentValue.toString()),
        actions: [
          isLoading ?  Center(
            child: CircularProgressIndicator(
              color: Theme.of(context).backgroundColor,
            ), 
          ) : SizedBox.shrink()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
        onPressed: () async {
          changeLoading();
          final prefs = await SharedPreferences.getInstance();
          await prefs.setInt('counter', _currentValue);
        }
      ),
      body: TextField(
        onChanged: (value) {
          _onChangeValue(value);
        },
      ),
    );
  }
}

abstract class LoadingStateful<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;

  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}