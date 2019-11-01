import 'package:flutter/material.dart';
import 'package:message_ui/models/message_model.dart';
import 'package:message_ui/screens/chat_screen.dart';

class RecentChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded( // Expanded wraps the container to size it according to everything it holds
      child: Container(
        //margin: EdgeInsets.only(top: 5.0,bottom: 5.0, right: 10.0),
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: Colors.white, // make background white
          borderRadius: BorderRadius.only( // give recent chats rounded corners
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
                  child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              final chat = chats[index]; // so we don't need to type out chats[index everywhere]
              return Container(
                margin: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 20.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                decoration: BoxDecoration(
                  color: chat.unread ? Color(0xFFDBFFE1) : Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)
                  ),
                  ),
                child: Row(
                  children: <Widget>[
                  Row( // vertical row containing all of our recent chats
                    children: <Widget>[
                      CircleAvatar( // recent chat avatars
                        radius: 35.0,
                        backgroundImage: AssetImage(chat.sender.imageUrl),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column( // column containing recent chat sender names and text
                        crossAxisAlignment: CrossAxisAlignment.start, // bind names and text to left
                        children: <Widget>[ // widget contains text
                          Text( // sender name
                          chat.sender.name,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 5.0),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Text( // message text preview
                            chat.text,
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.ellipsis,
                            ),
                        ),
                        ]
                      ),
                    ],
                    ),
                    Column( //This is in the row wrapping the first so we can keep timestamp and 'NEW' bound to the right
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(chat.time,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),),
                        Container(
                          width: 40,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          alignment: Alignment.center,
                          child: Text('NEW',
                          style: TextStyle(
                            color: Colors.yellow,
                          ),
                          )
                          ),
                      ],
                    )
                    ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}