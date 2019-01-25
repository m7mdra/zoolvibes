import 'package:flutter/material.dart';
import 'package:zoolvibes/widgets/flat_appbar.dart';

class UserPlaylistsPage extends StatefulWidget {
  @override
  _UserPlaylistsPageState createState() => _UserPlaylistsPageState();
}

class _UserPlaylistsPageState extends State<UserPlaylistsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FlatAppBar(
        title: Text('Playlists'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          primary: true,
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return generateFakeGridItemWithIndex(index);
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
          ),
        ),
      ),
    );
  }

  Widget generateFakeGridItemWithIndex(int index) {
    return GridTile(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            width: 200,
            height: 150,
            child: Icon(
              Icons.music_note,
              color: Colors.white,
              size: 50,
            ),
          ),
          Text(
            'Playlist name $index',
            style: TextStyle(color: Colors.black, fontSize: 17.0),
          ),
          Text('1$index Tracks', style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
