import 'package:flutter/material.dart';
import 'package:zoolvibes/pages/audio_zone_page_view_page.dart';
import 'package:zoolvibes/pages/big_player_page.dart';
import 'package:zoolvibes/pages/profile_page.dart';
import 'package:zoolvibes/pages/user_playlists_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZoolVibes',
      theme: ThemeData(
        accentColor: Colors.purple,
        primaryColor: Colors.white,
        primaryColorDark: Colors.purpleAccent,
      ),
      home: MyHomePage(title: 'Zoolvibes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _currentIndex = 0;
  var _pageController;
  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(initialPage: _currentIndex, keepPage: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => UserPlaylistsPage()));
                },
                color: Theme.of(context).accentColor,
                icon: Icon(Icons.queue_music),
              ))
        ],
        leading: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => UserProfilePage()));
          },
          child: Container(
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(),
            ),
            child: Icon(
              Icons.person,
              size: 30,
            ),
          ),
        ),
        title: Text('ZoolVibes'),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        pageSnapping: true,
        physics: PageScrollPhysics(),
        children: <Widget>[
          Center(
              child: Text(
            'Audio Zone',
            style: Theme.of(context).textTheme.display4,
          )),
          AudioZonePageViewPage(),

          Center(
              child: Text(
            'My Music',
            style: Theme.of(context).textTheme.display4,
          )),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          _MiniPlayer(),
          BottomNavigationBar(
            fixedColor: Theme.of(context).accentColor,
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            onTap: navigationTapped,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), title: Text('Search')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.headset), title: Text('Audio Zone')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.music_note), title: Text('My Music'))
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void navigationTapped(int page) {
    setState(() {
      _currentIndex = page;
    });
    _pageController.animateToPage(page,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }
}

class SearchPageViewPage {
}

class _MiniPlayer extends StatelessWidget {
  const _MiniPlayer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BigPlayerPage()));
      },
      child: Card(
        margin: EdgeInsets.all(0),
        child: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              margin: EdgeInsets.only(left: 8, right: 8, top: 4),
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.music_note,
                size: 35.0,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Track Name',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Theme.of(context).accentColor),
                  ),
                  Text(
                    'Artist Name',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.skip_previous,
                    size: 30,
                    color: Theme.of(context).accentColor,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.pause,
                    size: 30,
                    color: Theme.of(context).accentColor,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.skip_next,
                    size: 30,
                    color: Theme.of(context).accentColor,
                  ),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
