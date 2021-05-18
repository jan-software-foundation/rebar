export 'home.dart';

//import 'package:dartvolt/dartvolt.dart';
import 'package:flutter/material.dart';
import 'package:rebar/src/ChannelListItem.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff000000), // page bg color
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
            child: Column(
                children: <Widget>[
                    const ChannelListItem(title: 'h'),
                    const ChannelListItem(title: 'h'),
                    const ChannelListItem(title: 'h'),
                    const ChannelListItem(title: 'h'),
                    const ChannelListItem(title: 'h'),
                    const ChannelListItem(title: 'h'),
                    const ChannelListItem(title: 'h'),
                    const ChannelListItem(title: 'h'),
                    const ChannelListItem(title: 'h'),
                    const ChannelListItem(title: 'h'),
                    const ChannelListItem(title: 'h'),
                    const ChannelListItem(title: 'h'),
                    const ChannelListItem(title: 'h'),
                ],
            )
        )
    );
  }
}
