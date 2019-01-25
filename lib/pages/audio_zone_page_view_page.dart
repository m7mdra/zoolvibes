import 'package:flutter/material.dart';
import 'package:zoolvibes/pages/channel_details_page.dart';
import 'package:zoolvibes/pages/user_playlists_page.dart';

class AudioZonePageViewPage extends StatefulWidget {
  @override
  _AudioZonePageViewPageState createState() => _AudioZonePageViewPageState();
}

class _AudioZonePageViewPageState extends State<AudioZonePageViewPage>
    with AutomaticKeepAliveClientMixin<AudioZonePageViewPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TabBar(
          labelColor: Theme.of(context).accentColor,
          unselectedLabelColor: Colors.grey,
          unselectedLabelStyle: null,
          indicatorWeight: 3,
          indicatorPadding: EdgeInsets.all(8),
          indicatorSize: TabBarIndicatorSize.tab,
          labelStyle: TextStyle(fontSize: 20),
          isScrollable: true,
          tabs: [
            Tab(
              text: 'Music',
            ),
            Tab(
              text: 'Radio',
            ),
          ],
        ),
        body: TabBarView(
          children: [
            AudioZoneTabPage(
              tabMode: TabMode.Music,
            ),
            AudioZoneTabPage(
              tabMode: TabMode.Radio,
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class AudioZoneTabPage extends StatefulWidget {
  final TabMode tabMode;

  const AudioZoneTabPage({Key key, this.tabMode}) : super(key: key);

  @override
  _AudioZoneTabPageState createState() => _AudioZoneTabPageState();
}

class _AudioZoneTabPageState extends State<AudioZoneTabPage> {
  @override
  Widget build(BuildContext context) {
    TabMode tabMode = widget.tabMode;
    if (tabMode == TabMode.Music)
      return MusicTabPage();
    else
      return RadioTabPage();
  }
}

enum TabMode { Music, Radio }

class RadioTabPage extends StatefulWidget {
  @override
  _RadioTabPageState createState() => _RadioTabPageState();
}

class _RadioTabPageState extends State<RadioTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          primary: true,
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
      ),
    );
  }
}

class MusicTabPage extends StatefulWidget {
  @override
  _MusicTabPageState createState() => _MusicTabPageState();
}

class _MusicTabPageState extends State<MusicTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          primary: true,
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
      ),
    );
  }
}

Widget generateFakeGridItemWithIndex(context, index) {
  return GridTile(
    child: InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ChannelDetailsPage()));
      },
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
            'Channel name $index',
            style: TextStyle(color: Colors.black, fontSize: 17.0),
          ),
          Text('1$index Followers', style: TextStyle(color: Colors.grey)),
        ],
      ),
    ),
  );
}
