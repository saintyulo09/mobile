import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class Account {
  final String username;
  final String handle;
  final String text;

  Account({
    required this.username,
    required this.handle,
    required this.text
  });
}

class MainApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AccountTimeline(),
    );
  }

}

class AccountTimeline extends StatelessWidget{
  final List<Account> post = [
    Account(username: 'Romeo Reyes', handle: '@roming', text: 'Hello Mars'),
    Account(username: 'Saint Reyes', handle: '@saint', text: 'Hello jupiter'),
    Account(username: 'Warp lazarte', handle: '@warp', text: 'Hello moon'),
    Account(username: 'Jaynal Magbanlag', handle: '@jayjay', text: 'Hello earth'),
    Account(username: 'Romeo Cordero', handle: '@cordero', text: 'Hello gar'),
    Account(username: 'Kim Melendres', handle: '@kim', text: 'Hello Kim chu'),
    Account(username: 'Romeo Reyes', handle: '@roming', text: 'Hello Mars'),
    Account(username: 'Romeo Reyes', handle: '@roming', text: 'Hello Mars'),

  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("the Social App")
      ),
      body: ListView.builder(
        itemCount: post.length, 
        itemBuilder: (context, index){
          final Account posts = post[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text(posts.handle[1]),
            ),
            title: Text('${posts.username} ${posts.handle}'),
            subtitle: Text(posts.text),

          );
        }, 
      ),
    );
  }

}
