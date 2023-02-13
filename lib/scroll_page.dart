import 'package:flutter/material.dart';

class ScrollPage extends StatefulWidget {
  const ScrollPage({super.key, required this.color});

  final Color color;

  @override
  State<ScrollPage> createState() => _ScrollPageState();
}

class _ScrollPageState extends State<ScrollPage> {
  // final GlobalKey key = GlobalKey<SliverState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          Hero(
            tag: widget.color,
            child: SliverAppBar.large(
              key: UniqueKey(),
              expandedHeight: 200,
              backgroundColor: widget.color,
              title: const Text(
                'This is a title blblaa',
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                title: Text('Item $index'),
              ),
              childCount: 100,
            ),
          ),
        ],
      ),
    );
  }
}
