export 'channel_list.dart';

import 'package:dartvolt/dartvolt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:rebar/src/widgets/channel_list/channel.dart';

class ChannelList extends StatefulWidget {
    ChannelList({Key? key}) : super(key: key);

    @override
    _ChannelListState createState() => _ChannelListState();
}

class _ChannelListState extends State<ChannelList> {
    void updateChannelList(List<Channel> channels) {
        setState(() {
            channelWidgetList.length = 0;
            for (var channel in channels) {
                channelWidgetList.add(
                    ChannelWidget(title: channel.name)
                );
            }
        });
    }

    List<Widget> channelWidgetList = [];

    @override
    Widget build(BuildContext context) {
        return ListView(
            scrollDirection: Axis.horizontal,
            children: channelWidgetList,
        );
    }
}