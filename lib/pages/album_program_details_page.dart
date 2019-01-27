import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zoolvibes/pages/big_player_page.dart';
import 'package:zoolvibes/widgets/scale_route.dart';

class AlbumProgramDetailsPage extends StatefulWidget {
  @override
  _AlbumProgramDetailsPageState createState() =>
      _AlbumProgramDetailsPageState();
}

class _AlbumProgramDetailsPageState extends State<AlbumProgramDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, bool) {
          return [
            SliverAppBar(
              expandedHeight: 200,
              backgroundColor: Colors.transparent,
              elevation: 0,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(64.0),
                          child: Divider(
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(left: 32, right: 32, bottom: 16),
                          decoration: BoxDecoration(
                              color: Theme.of(context).accentColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          child: Icon(
                            Icons.music_note,
                            size: 100,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Album/program Name',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      '10 Tracks | 12k Plays | 1:30:32',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, position) {
            return ListTile(
              onTap: (){
                Navigator.of(context).push(ScaleRoute(widget: BigPlayerPage()));
                
              },
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
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Icon(
                      Icons.music_note,
                    ),
                  ),
                ],
              ),
              title: Text('Track Name '),
              subtitle: Text('0${position}:0${position}'),
              trailing: IconButton(
                onPressed: () {
                  var snackBar = SnackBar(
                      content: Text(
                        'Downloading...',
                      ),
                      action: SnackBarAction(
                        label: 'Cancel',
                        textColor: Theme.of(context).accentColor,
                        onPressed: () {
                          Scaffold.of(context).hideCurrentSnackBar();
                        },
                      ));
                  Scaffold.of(context).showSnackBar(snackBar);
                },
                icon: Icon(
                  Icons.file_download,
                  color: Theme.of(context).accentColor,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
