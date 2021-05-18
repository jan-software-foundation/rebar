

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChannelListItem extends StatefulWidget {
    const ChannelListItem({Key? key, required this.title}) : super(key: key);

    final String title;
    
    State<ChannelListItem> createState() => _ChannelListItemState();
}

class _ChannelListItemState extends State<ChannelListItem> {
    @override
    Widget build(BuildContext context) {
        return Container(
            color: const Color(0xff222222),
            child: SizedBox(
                height: 100,
                child: Center(
                    heightFactor: 20,
                    child: Column(
                        children: <Widget>[
                            const Text(
                                'i am a channel',
                                style: TextStyle(color: Color(0xffffffff)),
                            ),
                            const Text(
                                'channel title here',
                                style: TextStyle(color: Color(0xffffffff)),
                            )
                        ],
                    )
                )
            )
        );
    }
}