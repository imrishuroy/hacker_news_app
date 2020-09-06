import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'src/article.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hacker News',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Article> _articles = articles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hacker News '),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 2));
          setState(() {
            _articles.removeAt(0);
          });
        },
        child: ListView(
          // children: _articles.map((article) => Text(article.text)).toList(),
          children: _articles.map(_buildItem).toList(),
        ),
      ),
    );
  }
}

Widget _buildItem(Article article) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ExpansionTile(
      title: Text(
        article.text,
        style: TextStyle(fontSize: 22),
      ),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('${article.commentsCount} comments'),
            IconButton(
              icon: Icon(Icons.launch),
              onPressed: () async {
                final url = 'https://flutter.dev';
                if (await canLaunch(url)) {
                  launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
            )
          ],
        ),
      ],
    ),
  );
}
