import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:NinjaCard() ,
));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjalevel = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('My ninja card'),
        centerTitle: true,
        backgroundColor: Colors.black87,
        elevation: 0.0,


      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // set state updates new value of function in it
          setState(() {
            ninjalevel += 1;

          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red[900] ,
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/index8.jpeg'),
                  radius: 50.0 ,
                ),
              ),
            Divider(
              height: 30.0,
              color: Colors.grey[800],
            ),
            Text('Name',
              style:
              TextStyle(color: Colors.grey,
                letterSpacing: 2.0,

              ),
            ),
              SizedBox(height: 10.0),
              Text('Dragon ',
                style:
                TextStyle(color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text('Current level',
                style:
                TextStyle(color: Colors.grey,
                  letterSpacing: 2.0,

                ),
              ),
              SizedBox(height: 10.0),
              Text('$ninjalevel',
                style:
                TextStyle(color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                // children to use a list of widget
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10.0),
                  Text('Dragonmail@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                  ),
                ],
              )
            ],
          ),
      )
    );
  }
}

