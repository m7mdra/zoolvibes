import 'package:flutter/material.dart';
import 'package:zoolvibes/widgets/flat_appbar.dart';

class ChannelDetailsPage extends StatefulWidget {
  @override
  _ChannelDetailsPageState createState() => _ChannelDetailsPageState();
}

class _ChannelDetailsPageState extends State<ChannelDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FlatAppBar(backgroundColor: Theme.of(context).scaffoldBackgroundColor,),
      body: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Divider(
                  color: Theme.of(context).accentColor,
                ),
              ),
              Container(
                padding: EdgeInsets.all(32),
                margin: EdgeInsets.only(left: 32, right: 32, bottom: 16),
                decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: Icon(
                  Icons.music_note,
                  size: 80,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Text(
            'Artist/Radio Name',
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            '@ChannelName | 9999 Followers',
            style: TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
          OutlineButton(
            onPressed: () {},
            borderSide: BorderSide(
              color: Theme.of(context).accentColor,
            ),
            highlightedBorderColor: Theme.of(context).accentColor,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.thumb_up),
                SizedBox(
                  width: 4,
                ),
                Text('Follow Channel'),
              ],
            ),
          ),
          GridView.builder(
            padding: EdgeInsets.all(8),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return generateFakeGridItemWithIndex(context, index);
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
            ),
          ),
        ],
      ),
    );
  }

  Widget generateFakeGridItemWithIndex(context, index) {
    return GridTile(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            width: 180,
            height: 150,
            child: Icon(
              Icons.music_note,
              color: Colors.white,
              size: 50,
            ),
          ),
          Text(
            'Album/Program name $index',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.black, fontSize: 17.0),
          ),
          Text('1$index Tracks', style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
