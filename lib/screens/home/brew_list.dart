import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_firebase/models/brew.dart';
import 'package:flutter_firebase/screens/home/brew_tile.dart';

class BrewList extends StatefulWidget {
  @override
  _BrewListState createState() => _BrewListState();
}

class _BrewListState extends State<BrewList> {
  @override
  Widget build(BuildContext context) {
    final dash = Provider.of<List<Brew>>(context) ?? [];

    return ListView.builder(
      itemCount: dash.length,
      itemBuilder: (context, index) {
        return BrewTile(brew: dash[index]);
      },
    );
  }
}
