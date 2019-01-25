import 'package:flutter/material.dart';

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
      return Center(
        child: Text('Music'),
      );
    else
      return Center(
        child: Text('Radio'),
      );
  }
}

enum TabMode { Music, Radio }
