import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
}

Widget _buildAppBar() {
  return AppBar(
    actions: [
      IconButton(
        icon: Icon(Icons.exit_to_app),
        onPressed: () {
        },
      ),
    ],
  );
}

Widget _buildBody() {
  return Padding(
    padding: EdgeInsets.all(16.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: 80.0,
                  height: 80.0,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://img1.daumcdn.net/thumb/R720x0/?fname=https://t1.daumcdn.net/news/201904/19/moneytoday/20190419141606693hahz.jpg"),
                  ),
                ),
                Container(
                  width: 80.0,
                  height: 80.0,
                  alignment: Alignment.bottomRight,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 28.0,
                        height: 28.0,
                        child: FloatingActionButton(
                            onPressed: () {}, backgroundColor: Colors.white),
                      ),
                      SizedBox(
                        width: 25.0,
                        height: 25.0,
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.all(8.0)),
            Text(
              "이름",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ],
        ),
        Text(
          "0\n게시물",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18.0),
        ),
        Text(
          "0\n팔로워",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18.0),
        ),
        Text(
          "0\n팔로잉",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18.0),
        ),
      ],
    ),
  );
}
