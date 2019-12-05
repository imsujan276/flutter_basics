import 'package:firstapp/facebook_ui/news_feed_card.dart';
import 'package:flutter/material.dart';

class Facebook extends StatefulWidget {
  @override
  _FacebookState createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        //for messenger icon
        actions: <Widget>[
          actionButton(assetImage: AssetImage('assets/search.png')),
          actionButton(assetImage: AssetImage('assets/messenger.png')),
        ],
        backgroundColor: Colors.white,
        title: ImageIcon(
          AssetImage('assets/facebook_logo.png'),
          color: Colors.blue,
          size: 120,
        ),
      ),
      body: ListView(
        children: <Widget>[
          NewsFeedCard('Jenny Cruise'),
          NewsFeedCard('Emma Clark')
        ],
      ),
    );
  }

  ///returns action buttons in app bar
  Widget actionButton({AssetImage assetImage}) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration:
            BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
        child: ImageIcon(
          assetImage,
          color: Colors.black,
          size: 23,
        ),
      ),
    );
  }
}
