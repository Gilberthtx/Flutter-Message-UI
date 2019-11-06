import 'package:flutter/material.dart';
import 'package:message_ui/widgets/category_selector.dart';
import 'package:message_ui/widgets/favorite_contacts.dart';
import 'package:message_ui/widgets/recent_chats.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    //return Expanded(
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
      leading: IconButton(
        icon: Icon(Icons.menu),
        iconSize: 30.0,
        color: Colors.white,
        onPressed: () {},
      ),
      title: Text(
        'Kushare',
        style: TextStyle(
            color: Colors.white,
            fontSize: 28.0,
            fontWeight: FontWeight.bold
            ),
      ),
      elevation: 0.0,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          iconSize: 30.0,
          color: Colors.yellow,
          onPressed: () {},
        ),
      ],
    ),
    body: Column( //Vertical scroll column of chats
      children: <Widget>[
        //CategorySelector(), //Shows categories and allows to switch between them
        Container( // Vertical Row of chats with circular corners
          height: 603.4, // 513.4 with category selector on, 603.4 without!!! TODO: change to be infinite scroll or size of phone window
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            ),
            child: Column(//Horizontal scroll column of favorite contacts
              children: <Widget>[
                //FavoriteContacts(), // Holds Favorite Contacts widget in seperate dart file
                RecentChats(), // Holds Recent Chat tiles
              ],
            ),
        )
      ],
    ),
    );
  }
}