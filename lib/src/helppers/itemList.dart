import 'package:flutter/material.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

class ItemList extends StatelessWidget {

  final String name;
  final ColorSwatch color;
  final IconData iconLocation;
  final String phone;

  const ItemList({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
    @required this.phone
  })  : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        assert(phone != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
      Icon(iconLocation),
      Column(children: <Widget>[
        Text("$name"),
        Text("$phone")
      ],)
    ],
    );
  }
}

