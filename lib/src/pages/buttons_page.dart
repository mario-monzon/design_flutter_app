import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _backgroundApp(),
          SingleChildScrollView(
            child: Column(
              children: [
                _titles(),
                _btnRounded()
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _btnNavigatorBar(context)
    );
  }

  Widget _backgroundApp() {
    final backgroundGradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
                Color.fromRGBO(52, 54, 101, 1.0),
                Color.fromRGBO(35, 37, 57, 1.0),
              ]
          )
      ),
    );

    final boxGradient = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90.0),
          gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.4),
            end: FractionalOffset(0.6, 1.0),
            colors: [
             Color.fromRGBO(236, 98, 188, 1.0),
             Color.fromRGBO(241, 142, 172, 1.0),
            ]
          )
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        backgroundGradient,
        Positioned(
          top: -80.0,
            child: boxGradient
        )
      ],
    );
  }

  Widget _titles() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Classify transaction', style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
            ),
            SizedBox(height: 10.0,),
            Text('Classify this transaction into a particular category',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white)
            ),
          ],
        ),
      ),
    );
  }

  Widget _btnNavigatorBar ( BuildContext context ) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith( caption: TextStyle(
          color: Color.fromRGBO(116, 117, 152, 1.0)
        ) )

      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: '',
            icon: Icon( Icons.calendar_today, size: 30.0, ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon( Icons.bubble_chart, size: 30.0, ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon( Icons.supervised_user_circle, size: 30.0, ),
          )
        ],
      ),
    );
  }

  Widget _btnRounded() {
    return Table(
      children: <TableRow>[
        TableRow(
          children: [
            _createRoundedBtn( Colors.blue, Icons.menu, 'General' ),
            _createRoundedBtn( Colors.black45, Icons.emoji_transportation, 'Share The Car' )
          ]
        ),
        TableRow(
            children: [
              _createRoundedBtn( Colors.red, Icons.event, 'Eventos' ),
              _createRoundedBtn( Colors.green, Icons.group, 'Roster' )
            ]
        ),
        TableRow(
            children: [
              _createRoundedBtn( Colors.amber, Icons.sports_football, 'Competition' ),
              _createRoundedBtn( Colors.blue, Icons.new_releases, 'News' )
            ]
        ),
        TableRow(
            children: [
              _createRoundedBtn( Colors.teal, Icons.settings, 'Config' ),
              _createRoundedBtn( Colors.deepOrange, Icons.alternate_email, 'Contacto' )
            ]
        ),
      ],
    );
  }

  Widget _createRoundedBtn(Color color, IconData icon, String text) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          height: 130.0,
          margin: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox( height: 5.0, ),
              CircleAvatar(
                backgroundColor: color,
                radius: 30.0,
                child: Icon( icon, color: Colors.white, size: 30.0,)
              ),
              Text( text, style: TextStyle(fontWeight: FontWeight.bold, color: color),),
              SizedBox( height: 5.0, )
            ],
          ),
        ),
      ),
    );
  }


} // ButtonsPage
