import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200],
              icon: Icon(Icons.search)),
        ),
      ),

      ///for settings options
      body: ListView(
        children: <Widget>[
          ///for top spacing
          Container(
            height: 15,
          ),

          ///for network setting
          singleRow(
              context: context,
              routeName: '/contacts',
              color: Colors.blue,
              iconData: Icons.wifi,
              title: 'Network & Internet',
              subtitle: 'mobile,data usage & hotspot'),

          ///for connected devices
          singleRow(
              color: Colors.green,
              iconData: Icons.devices_other,
              title: 'Connected devices',
              subtitle: 'Bluetooth'),

          ///for app and notification
          singleRow(
              color: Colors.deepOrange,
              iconData: Icons.apps,
              title: 'Apps & notification',
              subtitle: 'Permissions, default apps'),

          ///for Battery
          singleRow(
              color: Colors.teal,
              iconData: Icons.battery_full,
              title: 'Battery',
              subtitle: '100%'),

          ///for Display
          singleRow(
              color: Colors.orange,
              iconData: Icons.brightness_medium,
              title: 'Display',
              subtitle: 'Wallpaper, sleep, font size'),
        ],
      ),
    );
  }

  ///returns single row with icon and setting option
  Widget singleRow(
      {IconData iconData,
      BuildContext context,
      String title,
      String subtitle,
      Color color,
      String routeName}) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(routeName);
      },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            ///for left spaceing befor icon
            Container(
              width: 10,
            ),

            ///for icon
            Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              child: Icon(
                iconData,
                color: Colors.white,
              ),
            ),

            Container(width: 25),

            ///for title and subtitle
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ///for title
                Text(
                  title,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),

                ///for subtitle
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.grey[700]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
