import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(3.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://www.aprendeconenergia.cl/wp-content/uploads/2016/12/nikolaTesla1.jpg'),
              radius: 25.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('NT'),
              backgroundColor: Colors.blue[50],
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://blog.mienciclo.com/wp-content/uploads/2018/01/Nikola-Tesla-740x420.jpg'),
          placeholder: AssetImage('assets/original.gif'),
          fadeInDuration: Duration( milliseconds: 200),
        ),
      ),




      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add_location ),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      
    );
  }
}