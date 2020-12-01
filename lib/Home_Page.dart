import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Instagram Clon",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: _buildBody(),
    );
  }
}

Widget _buildBody() {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                "Instagram에 오신 걸을 환영합니다",
                style: TextStyle(fontSize: 24.0),
              ),
              Padding(padding: EdgeInsets.all(8.0)),
              Text("사진과 동영상을 보려면 팔로우하세요"),
              Padding(padding: EdgeInsets.all(16.0)),
              SizedBox(
                width: 260.0,
                child: Card(
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.all(4.0)),
                      SizedBox(
                        height: 80.0,
                        width: 80.0,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://lh3.googleusercontent.com/proxy/BrWhmg53CYlO7UY9Ubftloyb1iq4MGNMiUzjoRGOgnrqB-pIIbLyla3Th4Hc_S0TxfPXTLRku_EorUSqSaVnvL5RwYHkZ0L4uBMcrE-jvNiN0AiRQjKrT1Hj"),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(8.0)),
                      Text(
                        "cccwls@naver.com",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("Jinwon Choi"),
                      Padding(padding: EdgeInsets.all(8.0)),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 70.0,
                            height: 70.0,
                            child: Image.network("https://lh3.googleusercontent.com/proxy/BrWhmg53CYlO7UY9Ubftloyb1iq4MGNMiUzjoRGOgnrqB-pIIbLyla3Th4Hc_S0TxfPXTLRku_EorUSqSaVnvL5RwYHkZ0L4uBMcrE-jvNiN0AiRQjKrT1Hj",fit: BoxFit.cover),
                          ),
                          Padding(padding: EdgeInsets.all(1.0)),
                          SizedBox(
                            width: 70.0,
                            height: 70.0,
                            child: Image.network("https://lh3.googleusercontent.com/proxy/BrWhmg53CYlO7UY9Ubftloyb1iq4MGNMiUzjoRGOgnrqB-pIIbLyla3Th4Hc_S0TxfPXTLRku_EorUSqSaVnvL5RwYHkZ0L4uBMcrE-jvNiN0AiRQjKrT1Hj",fit: BoxFit.cover),
                          ),
                          Padding(padding: EdgeInsets.all(1.0)),
                          SizedBox(
                            width: 70.0,
                            height: 70.0,
                            child: Image.network("https://lh3.googleusercontent.com/proxy/BrWhmg53CYlO7UY9Ubftloyb1iq4MGNMiUzjoRGOgnrqB-pIIbLyla3Th4Hc_S0TxfPXTLRku_EorUSqSaVnvL5RwYHkZ0L4uBMcrE-jvNiN0AiRQjKrT1Hj",fit: BoxFit.cover),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(4.0)),
                      Text("Facebook 친구"),
                      RaisedButton(
                        child: Text("팔로우"),
                        onPressed: () {},
                        color: Colors.blueAccent,
                        textColor: Colors.white,
                      ),
                      Padding(padding: EdgeInsets.all(4.0)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
