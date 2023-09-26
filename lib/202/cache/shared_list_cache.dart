import 'package:flutter/material.dart';
import 'package:flutter_tutorial/202/cache/shared_learn_cache.dart';

class SharedListCache extends StatefulWidget {
  const SharedListCache({super.key});

  @override
  State<SharedListCache> createState() => _SharedListCacheState();
}

class _SharedListCacheState extends State<SharedListCache> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _UserListView(),
    );
  }
}

class _UserListView extends StatelessWidget {
   _UserListView({
    super.key,
  });
  
  final List<UserClass> users = UserItems().users;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder:(BuildContext context,int index) {
        return Card(
          child: ListTile(
            title: Text(users[index].name),
            subtitle: Text(users[index].description),
            trailing: Text(users[index].url, style: Theme.of(context).textTheme.titleMedium?.copyWith(
              decoration: TextDecoration.underline
            )),
          ),
        );
      }, 
    );
  }
}