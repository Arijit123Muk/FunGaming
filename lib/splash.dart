import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  void setup() async
  {
    await GoToHomeScreen ();
    Navigator.pushReplacementNamed(context, '/gaming_world');
  }

  Future<void> GoToHomeScreen () async{
    await Future.delayed(Duration(seconds: 2), () {});
  }


  @override
  void initState() {
    super.initState();
    setup();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/logo.jpg')),
              SizedBox(height:200.0,),
              Text('from',style: TextStyle(fontFamily: 'Orbitron',fontSize: 15,fontWeight: FontWeight.bold,color: Color.fromRGBO(126, 120, 210, 1.0),)),
              SizedBox(height: 10.0,),
              Text('Arijit',style: TextStyle(fontFamily: 'Orbitron',fontSize: 30,fontWeight: FontWeight.bold,color: Colors.deepPurple,letterSpacing: 2.0),),
            ],
          )
      )
    );
  }
}
