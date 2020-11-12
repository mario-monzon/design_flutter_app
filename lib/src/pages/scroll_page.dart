import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _page1(),
          _page2()
        ],
      )
    );
  }
}

Widget _page1() {

  return Stack(
    children: <Widget>[
      _backgroundColor(),
      _backgroundImage(),
      _texts()
    ],
  );
}




Widget _page2() {
  return Center(
    child: Text('Page 02'),
  );
}

Widget _backgroundColor() {
  return Container(
    width: double.infinity,
    height: double.infinity,
    color: Color.fromRGBO(108, 192, 218, 1.0),
  );
}

Widget _backgroundImage() {
  return Container(
    width: double.infinity,
    height: double.infinity,
    child: Image(
      image: AssetImage('assets/img/scroll_01.png'),
      fit: BoxFit.cover
    ),
  );
}

Widget _texts() {
  final textStyle = TextStyle(color: Colors.white, fontSize: 50.0,fontWeight: FontWeight.bold);
  return SafeArea(
    child: Column(
      children: <Widget>[
        SizedBox(height: 20.0),
        Text( '11º', style: textStyle),
        Text('Jueves', style: textStyle,),
        Expanded(child: Container()),
        Icon( Icons.keyboard_arrow_down, size: 70.0, color: Colors.white, )
      ],
    ),
  );
}