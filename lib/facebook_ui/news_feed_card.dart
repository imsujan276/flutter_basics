import 'package:flutter/material.dart';

class NewsFeedCard extends StatefulWidget {
  final String accountName;

  ///constructor
  NewsFeedCard(this.accountName);
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
        color: Colors.white,
        height: 450,
        width: screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ///for profile picture, account and date and time
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      ///for profile Picture
                      CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        child: Icon(Icons.account_circle),
                      ),
                      Container(
                        width: 10,
                      ),

                      ///for account name and date and time
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ///for acccount name
                          Text(widget.accountName,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16)),
                          Row(
                            children: <Widget>[
                              Text('20-05-2019',
                                  style: TextStyle(color: Colors.grey[700])),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Container(
                                  height: 3,
                                  width: 3,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey[700]),
                                ),
                              ),

                              ///for privacy
                              Icon(
                                Icons.public,
                                color: Colors.grey[700],
                                size: 15,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

                  ///for option icon
                  Icon(
                    Icons.more_horiz,
                    color: Colors.grey[700],
                  )
                ],
              ),
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

                ///for reactions comment count and shares count
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          reactionEmoji(),

                          ///for reaction count
                          Text(
                            '6.9K',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
                      ),

                      ///for comments and share
                      commentsAndShare()
                    ],
                  ),
                )
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

  ///returns overlapped reactioin emoji
  Widget reactionEmoji() {
    return Container(
      color: Colors.white,
      // height: 50,
      width: 38,

      child: Stack(
        children: <Widget>[
          ///for bottom emoji
          Positioned(
            right: 0,
            child: Container(
              padding: EdgeInsets.all(3),
              child: Icon(
                Icons.thumb_up,
                color: Colors.white,
                size: 16,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
            ),
          ),

          ///for haha emojji
          Container(
            padding: EdgeInsets.all(1),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            child: Icon(
              Icons.favorite,
              size: 20,
              color: Colors.red[700],
            ),
          )
        ],
      ),
    );
  }

  ///returns comments and share counts
  Widget commentsAndShare() {
    return Text(
      '168 Comments 978 Shares',
      style: TextStyle(color: Colors.black, fontSize: 14),
    );
  }
}
