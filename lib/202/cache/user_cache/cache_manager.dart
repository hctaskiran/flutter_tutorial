import 'dart:convert';

import 'package:flutter_tutorial/202/cache/shared_learn_cache.dart';
import 'package:flutter_tutorial/202/cache/shared_manager.dart';

class UserCacherManager {
  final SharedManager sharedManager;

  UserCacherManager(this.sharedManager);

  void saveItems(List<UserClass> items) {
    // compute
    final _items = items.map((element) => jsonEncode(element)).toList();
    sharedManager.saveStringItems(SharedKeys.users, _items);
  }
  List<UserClass>? getItems() {
    // compute
    final itemsString = sharedManager.getStrings(SharedKeys.users);
    if (itemsString?.isNotEmpty ?? false) {
      itemsString!.map((element) {
        final jsonObject = jsonDecode(element);
        return UserClass('name', 'description', 'a');
      }).toList();
    }
    return null;
  }
}