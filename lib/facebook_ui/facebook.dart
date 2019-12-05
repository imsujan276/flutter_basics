import 'package:firstapp/facebook_ui/news_feed_card.dart';
import 'package:flutter/material.dart';

class Facebook extends StatefulWidget {
  @override
  _FacebookState createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  List<Widget> _tabsBody = [
    ListView(
      children: <Widget>[
        NewsFeedCard('Jenny Cruise'),
        NewsFeedCard('Emma Clark')
      ],
    ),
    Text('this is second tab'),
    Text('this is third tab'),
    Text('this is fourth tab'),
    Text('this is fifth tab'),
    Text('this is sixth tab'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 6,
        child: Scaffold(
            drawer: Drawer(),
            backgroundColor: Colors.grey[300],
            appBar: AppBar(
              bottom: TabBar(
                tabs: <Widget>[
                  Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.group,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.live_tv,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.account_circle,
                    color: Colors.black,
                  ),
                  Icon(Icons.notifications, color: Colors.black),
                  Icon(
                    Icons.menu,
                    color: Colors.black,
                  )
                ],
              ),
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
            body: TabBarView(
              children: _tabsBody,
            )));
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
