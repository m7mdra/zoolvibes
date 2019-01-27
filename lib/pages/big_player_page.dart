import 'package:flutter/material.dart';
import 'package:zoolvibes/widgets/flat_appbar.dart';
import 'package:zoolvibes/widgets/scale_route.dart';
import 'package:zoolvibes/widgets/seekbar.dart';

class BigPlayerPage extends StatefulWidget {
  @override
  _BigPlayerPageState createState() => _BigPlayerPageState();
}

class _BigPlayerPageState extends State<BigPlayerPage>
    with SingleTickerProviderStateMixin {
  var favorite = false;
  bool isOpened = false;
  AnimationController _animationController;
  Animation<double> _animateIcon;
  @override
  initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 100))
          ..addListener(() {
            setState(() {});
          });
    _animateIcon =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    super.initState();
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  animate() {
    if (!isOpened) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    isOpened = !isOpened;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(32),
            margin: EdgeInsets.only(left: 32, right: 32, bottom: 16),
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Icon(
              Icons.music_note,
              size: 220,
              color: Colors.white,
            ),
          ),
          Center(
              child: Text(
            'Track Name - Track Channel',
            style: TextStyle(
                color: Theme.of(context).accentColor,
                fontWeight: FontWeight.bold,
                fontSize: 17),
          )),
          SizedBox(
            height: 4,
          ),
          Center(
            child: Text(
              'Album/Program Name',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  tooltip: 'Open music queue',
                  icon: Icon(
                    Icons.queue_music,
                    color: Theme.of(context).accentColor,
                    size: 30,
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return ListView.builder(
                            itemCount: 10,
                            itemBuilder: (context, position) {
                              return ListTile(
                                onTap: () {},
                                leading: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(right: 16),
                                      child: Text('${position + 1}'),
                                    ),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Icon(
                                        Icons.music_note,
                                      ),
                                    ),
                                  ],
                                ),
                                title: Text('Track Name '),
                                subtitle: Text('0${position}:0${position}'),
                              );
                            },
                          );
                        });
                  },
                ),
                IconButton(
                  icon: Icon(
                    favorite ? Icons.favorite : Icons.favorite_border,
                    color: Theme.of(context).accentColor,
                    size: 30,
                  ),
                  onPressed: () {
                    setState(() {
                      favorite = !favorite;
                    });
                  },
                ),
                IconButton(
                  tooltip: 'Add to Playlist',
                  icon: Icon(
                    Icons.add,
                    color: Theme.of(context).accentColor,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                SeekBar(
                  max: 100,
                  value: 50,
                  backgroundColor: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '03:30',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '05:30',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.shuffle,
                  size: 30,
                  color: Theme.of(context).accentColor,
                ),
                onPressed: () {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
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
                      Icons.fast_rewind,
                      size: 30,
                      color: Theme.of(context).accentColor,
                    ),
                    onPressed: () {},
                  ),
                  FloatingActionButton(
                    child: AnimatedIcon(
                      progress: _animateIcon,
                      icon: AnimatedIcons.play_pause,
                      size: 40,
                    ),
                    onPressed: () {
                      animate();
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.fast_forward,
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
              ),
              IconButton(
                icon: Icon(
                  Icons.repeat,
                  size: 30,
                  color: Theme.of(context).accentColor,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
      appBar: FlatAppBar(
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text('Equalizer'),
                ),
              ];
            },
          )
        ],
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: Theme.of(context).accentColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
