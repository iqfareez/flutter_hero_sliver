import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ScrollPageAppbar extends StatelessWidget {
  const ScrollPageAppbar({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight + 140),
          child: Hero(
            tag: 'appbar $color',
            child: AppBar(
                backgroundColor: color,
                bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(0),
                  child: Expanded(
                    child: Text(
                      'This is a title blblaa',
                      style: TextStyle(fontSize: 34),
                    ),
                  ),
                )),
          ),
        ),
        body: ListView(
          children: List.generate(
            100,
            (index) => ListTile(
              title: Text('Item $index'),
            ),
          ),
        ));
  }
}
