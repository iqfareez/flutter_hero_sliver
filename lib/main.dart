import 'package:flutter/material.dart';
import 'package:flutter_hero_sliver/scroll_page.dart';
import 'package:flutter_hero_sliver/scroll_page_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          const Text('SliverAppBar with Hero'),
          Row(
            children: [Colors.red, Colors.blue, Colors.yellow]
                .map(
                  (e) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ScrollPage(color: e),
                        ),
                      );
                    },
                    child: Hero(
                      tag: e,
                      child: Container(
                        width: 100,
                        height: 100,
                        color: e,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 40),
          const Text('Normal AppBar with Hero'),
          Row(
            children: [Colors.red, Colors.blue, Colors.yellow]
                .map((e) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ScrollPageAppbar(color: e),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'appbar $e',
                        child: Container(
                          width: 100,
                          height: 100,
                          color: e,
                        ),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
