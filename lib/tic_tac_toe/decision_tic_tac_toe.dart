import 'package:flutter/material.dart';
import 'package:shadow/shadow.dart';

String winner ;


class Decision extends StatefulWidget {
  Decision(dialog)
  {
    winner = dialog;
    print("Dia = $dialog");
    print("Win = $winner");
  }
  @override
  _DecisionState createState() => _DecisionState();
}

class _DecisionState extends State<Decision> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: (winner=='It\'s a draw')?AssetImage('assets/draw.gif'):AssetImage('assets/winner.gif'),
              fit: BoxFit.cover
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text('~:Game Over:~',style: TextStyle(fontFamily: 'MuseoModerno',fontWeight: FontWeight.bold,color: Colors.pink,fontSize: 50),),
              SizedBox(height: 20,),
              Text('$winner',style: TextStyle(fontFamily: 'MuseoModerno',color: Colors.deepPurpleAccent,fontSize: 40,fontWeight: FontWeight.bold),),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Shadow(
                  offset:Offset(10, 10) ,
                  child: RaisedButton(onPressed: (){Navigator.pushReplacementNamed(context, '/gaming_world');},
                    color: Colors.lightGreen,elevation: 100,
                    child:Text('Reset Game',style: TextStyle(fontFamily: 'MuseoModerno',color: Colors.redAccent,fontSize: 40,fontWeight: FontWeight.bold),), ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
