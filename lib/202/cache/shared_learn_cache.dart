import 'package:flutter/material.dart';
import 'package:flutter_tutorial/202/cache/shared_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLearn extends StatefulWidget {
  const SharedLearn({super.key});

  @override
  _SharedLearnState createState() => _SharedLearnState();
}

class _SharedLearnState extends LoadingStateful<SharedLearn> {
  int _currentValue = 0;
  late final SharedManager _manager;

  late final List<UserClass> userItems;

  @override
  void initState() {
    super.initState();
    userItems = UserItems().users;
    _manager = SharedManager();
    _initialize();
  }

  Future<void> _initialize() async {
    changeLoading();
    await _manager.init();
    getDefaultValues();
  }

  Future<void> getDefaultValues() async {
    // final prefs = await SharedPreferences.getInstance();
    // final int? counter = prefs.getInt('counter');
    _onChangeValue(_manager.getString(SharedKeys.counter) ?? '');
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
          _loading(context)
        ],
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [_saveValueButton(), _removeValueButton()],
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              _onChangeValue(value);
            },
          ),
        ],
      ),
    );
  }

  SingleChildRenderObjectWidget _loading(BuildContext context) {
    return isLoading
            ? Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).colorScheme.background,
                ),
              )
            : SizedBox.shrink();
  }

  FloatingActionButton _saveValueButton() {
    return FloatingActionButton(
        child: Icon(Icons.save),
        onPressed: () async {
          changeLoading();
          await _manager.saveString(SharedKeys.counter, _currentValue.toString());
          changeLoading();
        });
  }

  FloatingActionButton _removeValueButton() {
    return FloatingActionButton(
        child: Icon(Icons.remove_circle),
        onPressed: () async {
          changeLoading();
          await _manager.removeItem(SharedKeys.counter);
          changeLoading();
        });
  }
}

class _UserListView {
}



class UserClass {
  final String name;
  final String description;
  final String url;

  UserClass(this.name, this.description, this.url);
}

class UserItems {
  late final List<UserClass> users;
  UserItems(){
    users = [
      UserClass('hako', 'dev', 'hctaskiran.dev'),    
      UserClass('hako2', 'studen', 'hctaskiran.dev'),    
      UserClass('hako3', 'lol', 'hctaskiran.dev')    
  ];
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
