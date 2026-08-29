//90055509
//08/29/2000

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});  //constructor for MyApp

  //this is the 'building' of MyApp
  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Practice Widget'; //gives a title to the page
    return new MaterialApp(
      title: appTitle,
      home: new Scaffold(
          appBar: new AppBar(title: const Text(appTitle)), //applies the title, appbar is the top of the page
          body: const Center(child: Text('Hello World!'))
      ),
    );
  }
}

//build the picture, name, profession, and email
class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar( //picture child here
          radius: 70,
          backgroundImage: AssetImage('lib/generic_profile_picture'),
        ),
        const Text(  //name child here
          'Seth Baal',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.normal,
          ),
        ),
        const Text(  //title child here
          'Software Developer',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
        const Text(  //email child here
          'Email: sethbaal00@gmail.com',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}

//holds the logic and builds/rebuilds the follower counter, _make it private top this file
class _FollowerCountState extends State<FollowerCount> {
  int _followers = 0;

  void _addFollowers(){
    setState((){
      _followers++;
    });
  }

  @override build(BuildContext){
    return Column(
      children: [
        Text(
          'Followers: $_followers',
          style: const TextStyle( fontSize: 20),
        ),
        ElevatedButton(
          onPressed: _addFollowers,
          child: const Text('Follow'),
        )
      ],
    );
  }
}

class FollowerCount extends StatefulWidget {
  const FollowerCount({super.key});

  //just need to call the followercount Strate here
  @override
  State<StatefulWidget> createState() {
    return _FollowerCountState();
  }
}

