export 'channel.dart';

import 'package:flutter/cupertino.dart';

class ChannelWidget extends StatefulWidget {
    ChannelWidget({Key? key, required this.title}) : super(key: key);

    final String title;

    @override
    _ChannelWidgetState createState() => _ChannelWidgetState();
}

class _ChannelWidgetState extends State<ChannelWidget> {
    @override
    Widget build(BuildContext context) {
        return const Text('e');
    }
}