import 'package:flutter/material.dart';

class NewsFeedCard extends StatefulWidget {
  @override
  _NewsFeedCardState createState() => _NewsFeedCardState();
}

class _NewsFeedCardState extends State<NewsFeedCard> {
  DateTime _datetime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Card(
      child: Container(
        color: Colors.grey[100],
        height: 400,
        width: screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ///for profile picture, account and date and time
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ///for profile Picture
                CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  child: Icon(Icons.account_circle),
                ),

                ///for account name and date and time
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ///for acccount name
                    Text('Random Name'),
                    Text('20-05-2019'),
                  ],
                ),

                ///for option icon
                Icon(
                  Icons.more_horiz,
                  color: Colors.grey,
                )
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ///for status message
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('finally received facebook cards!'),
                ),

                ///for posted image
                Image.asset('assets/image_1.jpg'),
              ],
            ),

            ///for buttons: like,comment and share
            Column(
              children: <Widget>[
                Divider(
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ///for like button
                    bottomButtons(
                        iconData: Icons.thumb_up,
                        iconName: 'Like',
                        onPressed: () {}),

                    ///for comment button
                    bottomButtons(
                        iconData: Icons.comment,
                        iconName: 'Comment',
                        onPressed: () {}),

                    ///for share button
                    bottomButtons(
                        iconData: Icons.share,
                        iconName: 'Share',
                        onPressed: () {})
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  ///returns button for like,comment and share

  Widget bottomButtons(
      {IconData iconData, String iconName, Function onPressed}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          ///for button
          IconButton(
            color: Colors.grey,
            onPressed: onPressed,
            icon: Icon(iconData),
          ),

          ///for name
          Text(iconName)
        ],
      ),
    );
  }
}
