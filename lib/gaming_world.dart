import 'package:flutter/material.dart';



class GamingWorld extends StatefulWidget {
  @override
  _GamingWorldState createState() => _GamingWorldState();
}

class _GamingWorldState extends State<GamingWorld> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game World',style: TextStyle(fontSize: 30.0,fontFamily:'MuseoModerno',letterSpacing: 2.0,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 30.0, 20.0, 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                      onTap: () {print('tic_tac_toe entered');
                      Navigator.pushReplacementNamed(context, '/tic_tac_toe');},
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.yellow,
                        child: Image(
                          image: AssetImage('assets/tic_tac_toe.png'),
                          fit: BoxFit.fill,
                          height: 65,
                        ),
                      )
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Text('Tic Tac Toe',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'Orbitron'),),
            ],
          ),
        ),
      ),

    );
  }
}
