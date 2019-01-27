import 'package:flutter/material.dart';
import 'package:zoolvibes/pages/edit_user_profile_page.dart';
import 'package:zoolvibes/widgets/flat_appbar.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  var _switchChanged = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FlatAppBar(
        title: Text('Profile & Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(),
                    ),
                    child: Icon(
                      Icons.person,
                      size: 50,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('User\'s Full Name'),
                        Text('@Username'),
                      ],
                    ),
                  ),
                ),
                OutlineButton(
                  borderSide: BorderSide(
                    color: Theme.of(context).accentColor,
                  ),
                  highlightedBorderColor: Theme.of(context).accentColor,
                  child: Text(
                    'EDIT',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  shape: Border.all(
                      color: Theme.of(context).accentColor,
                      width: 5,
                      style: BorderStyle.solid),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>EditUserProfilePage()));
                  },
                  textColor: Theme.of(context).accentColor,
                )
              ],
            ),
            Divider(),
            Text(
              'Media Player',
              style: TextStyle(
                color: Theme.of(context).accentColor,
              ),
            ),
            ListTile(
              title: Text('Equalizer'),
              subtitle: Text('Jazz'),
              trailing: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text('Fast forward time'),
              subtitle: Text('5 Seconds'),
            ),
            ListTile(
              title: Text('Fast rewind time'),
              subtitle: Text('5 Seconds'),
            ),
            ListTile(
              title: Text('Clear MediaPlayer Cache'),
              subtitle: Text('Last clear on Friday at 12:30 am'),
            ),
            Divider(),
            Text(
              'Notifications',
              style: TextStyle(
                color: Theme.of(context).accentColor,
              ),
            ),
            ListTile(
              title: Text("Enable Notification"),
              trailing: Switch(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onChanged: (value) {
                  _switchChanged = value;
                },
                value: _switchChanged,
                activeColor: Theme.of(context).accentColor,
              ),
              onTap: () {
                setState(() {
                  _switchChanged = !_switchChanged;
                });
              },
            ),
            ListTile(
              title: Text('Change Ringtone'),
              subtitle: Text('Ringtone'),
            ),
            Divider(),
            Text(
              'ZoolVibes',
              style: TextStyle(
                color: Theme.of(context).accentColor,
              ),
            ),
            ListTile(
              title: Text('Contact us'),
              trailing: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text('Help & FAQ'),
              trailing: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text('Terms And Privacy'),
              trailing: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text('Rate on Google Play'),
              trailing: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text('About Zoolvibes'),
              trailing: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text(
                'Invite a friend',
              ),
              subtitle: Text('Invite your firends and earn gifts'),
              trailing: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Logout',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.exit_to_app,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
