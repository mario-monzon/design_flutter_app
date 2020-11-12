import 'package:flutter/material.dart';


class BasicPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _createImage(),
              _TitleRow(),
              _actionsButtons(),
              _createText(),
              _createText(),
              _createText()
            ],
          ),
        )
      ),
    );
  }
} // BasicPage

Widget _createImage() {

    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://lh3.googleusercontent.com/-H6PacdskbPehw_P3NQvLvIix3PK3gNC82AZXhpFhYm5PVY26CqyHieUp_jifhmYY-FrcezAVQ=w640-h400-e365-rj-sc0x00ffffff'),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );

} // _createImage

Widget _TitleRow() {

  final titleStyle = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold );
  final subtitleStyle = TextStyle( fontSize: 18.0, color: Colors.grey );

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text( 'Título', style: titleStyle, ),
                  SizedBox( height: 3.0, ),
                  Text( 'Subtítulo', style: subtitleStyle, )
                ],
              ),
            ),
            Icon( Icons.star, color: Colors.red, size: 20.0, ),
            Text( '41', style: TextStyle( fontSize: 20.0 ) )
          ],
        ),
      ),
    );

} // TitleRow

Widget _actionsButtons() {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _actionButtonItem(Icons.call, 'call'),
          _actionButtonItem(Icons.near_me, 'route'),
          _actionButtonItem(Icons.share, 'share'),
        ],
      ),
    );

} //_actionsButtons

Widget _actionButtonItem( IconData icon, String text){

  return Column(
    children: <Widget>[
      Icon( icon, size: 30.0, color: Colors.lightBlueAccent, ),
      SizedBox( height: 5.0, ),
      Text( text.toUpperCase(), style: TextStyle( fontSize: 16.0, color: Colors.lightBlueAccent ), )
    ],
  );

} // _actionButtonItem

Widget _createText() {

  return SafeArea(
    child: Container(
      padding: EdgeInsets.symmetric( horizontal: 30.0 ),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac dui eu quam tempor finibus. Pellentesque ac convallis nisi. Cras vel elit urna. Cras molestie lacus sed nisi convallis tincidunt. Maecenas at tempus dui, aliquam malesuada nisi. Fusce gravida nibh et malesuada consectetur. Curabitur eget vestibulum ex, ut sagittis dolor. Fusce non varius ante. Morbi pharetra velit orci. Duis magna risus, gravida eu dictum sit amet, convallis elementum nisi. Donec nec neque varius, tempus lorem et, ullamcorper nulla. Fusce eros arcu, scelerisque non rhoncus ac, accumsan eget diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque leo turpis, feugiat non nisi scelerisque, egestas pulvinar odio.',
        textAlign: TextAlign.justify,
      ),
    ),
  );
}


