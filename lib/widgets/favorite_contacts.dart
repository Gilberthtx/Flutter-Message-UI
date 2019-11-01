import 'package:flutter/material.dart';
import 'package:message_ui/models/message_model.dart';

class FavoriteContacts extends StatelessWidget { // Favorite Contacts Widget
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0), // Don't add horizontal padding here or the scroll view will be chopped on the sides
      child: Column(
        children: <Widget>[
         Padding( // Padding between 'Favorite Contacts' and 'Horizontal More BUtton'
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row( // Row containing  'Favorite Contacts' and 'Horizontal More BUtton'
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Favorite Contacts',
                style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                letterSpacing:  1.0,
              ),),
              IconButton( // ...
                icon: Icon(
                  Icons.more_horiz,
                ),
                iconSize: 30.0,
                color: Colors.blueGrey,
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container( // Contains Horizontal Row of Favorite Contact images
          height: 120.0,
          //color: Colors.blue,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 10.0),
            scrollDirection: Axis.horizontal,
            itemCount: favorites.length,
            itemBuilder: (BuildContext context, int index){
              return Padding(
                padding: EdgeInsets.all(10.0), // Padding between avatars
                child: Column(
                  children: <Widget>[
                    CircleAvatar( //wraps text to show favorite avatars
                      radius: 35.0,
                      backgroundImage: AssetImage(favorites[index].imageUrl),
                    ),
                    SizedBox(height: 6.0,), // seperates name from avatar
                    Text(
                      favorites[index].name,
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      )
                      )
                  ]
                ),
              );
            },
          ),
        ),
        ],
      ),
    );
  }
}
