import 'package:flutter/material.dart';

class ContactUi extends StatefulWidget {
  @override
  _ContactUiState createState() => _ContactUiState();
}

class _ContactUiState extends State<ContactUi> {
  int testInteger = 0;
  Widget accountIcon = Icon(
    Icons.account_box,
    color: Colors.purple,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            testInteger++;
            accountIcon = Icon(Icons.account_circle);
          });
          print('test integer is: $testInteger');
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.green,
      ),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('All'),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        actions: <Widget>[
          ///for search button
          Icon(
            Icons.search,
            color: Colors.white,
          ),

          ///for empty space between
          ///search and menu button
          Container(
            width: 50,
            color: Colors.transparent,
          ),

          ///for menut button
          Icon(
            Icons.donut_large,
            color: Colors.white,
          ),
          Container(
            width: 15,
            color: Colors.transparent,
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 15,
          ),
          Text('$testInteger'),
          rowBuilder(
              'Janet Perkins',
              Container(
                height: 25,
                width: 25,
                child: Icon(
                  Icons.star,
                  color: Colors.purple,
                ),
              )),
          rowBuilder('Mary Johnson', Container(width: 25, height: 25)),
          rowBuilder(
              'Peter Carlsson',
              Container(
                width: 25,
              ))
        ],
      ),
    );
  }

  Widget rowBuilder(String name, Widget leftIcon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ///for three children at left
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 20,
            ),

            ///for favourite icon
            leftIcon,
            Container(
              width: 30,
            ),

            ///for account circle icon
            accountIcon,
            Container(
              width: 30,
            ),

            ///for text
            Text(
              name,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),

        ///for space in right side
        Container(
          color: Colors.transparent,
          width: 30,
          height: 20,
        )
      ],
    );
  }
}
