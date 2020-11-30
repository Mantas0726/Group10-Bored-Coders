import 'package:flutter/material.dart';
import 'package:github/github.dart';
import 'package:bored_coders/src/data/github_provider.dart';
import 'dart:async';

class MyRepository extends StatelessWidget {
  final Widget repo;
  const MyRepository({Key key, @required this.repo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: repo,
    );
  }
}

class Repo extends StatelessWidget {
  const Repo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getRepository(),
      initialData: 'Grabbing...',
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Text(snapshot.data);
      },
    );
  }
}
