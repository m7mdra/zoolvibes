import 'package:flutter/material.dart';
import 'package:zoolvibes/widgets/flat_appbar.dart';

class EditUserProfilePage extends StatefulWidget {
  @override
  _EditUserProfilePageState createState() => _EditUserProfilePageState();
}

class _EditUserProfilePageState extends State<EditUserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FlatAppBar(
        title: Text('Edit Profile'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: FlatButton(
                child: Text(
                  'Save',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                textColor: Theme.of(context).accentColor,
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).accentColor),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 90,
                ),
              ),
              OutlineButton(
                borderSide: BorderSide(
                  color: Theme.of(context).accentColor,
                ),
                highlightedBorderColor: Theme.of(context).accentColor,
                child: Text(
                  'Change Profile Image',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                shape: Border.all(
                    color: Theme.of(context).accentColor,
                    width: 5,
                    style: BorderStyle.solid),
                onPressed: () {},
                textColor: Theme.of(context).accentColor,
              ),
            ],
          ),
          Divider(
            height: 1,
          ),
          buildNameWidgetTile(context),
          Divider(
            height: 1,
          ),
          buildPhoneNumberWidgetTile(context),
          Divider(
            height: 1,
          ),
          buildPasswordWidgetTile(context),
          Divider(
            height: 1,
          ),
          buildEmailWidgetTile(context),
          Divider(
            height: 1,
          ),
          buildBirthdayWidgetTile(context),
          Divider(
            height: 1,
          ),
          buildGenderWidgetTile(context),
        ],
      ),
    );
  }

  ListTile buildGenderWidgetTile(BuildContext context) {
    return ListTile(
      title: Text('Gender'),
      subtitle: Text('Male'),
      trailing: FlatButton(
        textColor: Theme.of(context).accentColor,
        splashColor: Colors.purpleAccent,
        child: Text(
          'Edit',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onPressed: () {},
      ),
    );
  }

  ListTile buildBirthdayWidgetTile(BuildContext context) {
    return ListTile(
      title: Text('Birthday'),
      subtitle: Text('1999/01/01'),
      trailing: FlatButton(
        splashColor: Colors.purpleAccent,
        textColor: Theme.of(context).accentColor,
        child: Text(
          'Edit',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onPressed: () {},
      ),
    );
  }

  ListTile buildEmailWidgetTile(BuildContext context) {
    return ListTile(
      title: Text('E-mail'),
      subtitle: Text(
        'Email not added',
      ),
      trailing: FlatButton(
        textColor: Theme.of(context).accentColor,
        splashColor: Colors.purpleAccent,
        child: Text(
          'Add',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onPressed: () {},
      ),
    );
  }

  ListTile buildPasswordWidgetTile(BuildContext context) {
    return ListTile(
      title: Text('Password'),
      subtitle: Text(
        '***********',
        style: TextStyle(fontWeight: FontWeight.w900),
      ),
      trailing: FlatButton(
        splashColor: Colors.purpleAccent,
        textColor: Theme.of(context).accentColor,
        child: Text(
          'Change',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onPressed: () {},
      ),
    );
  }

  ListTile buildPhoneNumberWidgetTile(BuildContext context) {
    return ListTile(
      title: Text('Phone Number'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('+249921210081'),
          Text(
            'Note: Changing Requires Verification',
            style: TextStyle(color: Colors.redAccent),
          )
        ],
      ),
      trailing: FlatButton(
        splashColor: Colors.purpleAccent,
        textColor: Theme.of(context).accentColor,
        child: Text(
          'Edit',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onPressed: () {},
      ),
    );
  }

  ListTile buildNameWidgetTile(BuildContext context) {
    return ListTile(
      title: Text('Full Name'),
      subtitle: Text('Mega'),
      trailing: FlatButton(
          splashColor: Colors.purpleAccent,
          textColor: Theme.of(context).accentColor,
          child: Text(
            'Edit',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onPressed: () {}),
    );
  }
}
