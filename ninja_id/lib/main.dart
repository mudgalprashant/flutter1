import 'package:flutter/material.dart'; 

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NinjaCard(),
      ),
  );
}

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 2;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Ninja ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
        onPressed: (){
          setState((){
            ninjaLevel+=1;
          });
        }
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(50.0, 40.0, 50.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/default.png'),
                radius: 80.0,
              ),
            ),
            Divider(
              height:60.0,
              color: Colors.grey,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color:Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height:20.0),
            Text(
              'Ninja1',
              style: TextStyle(
                color:Colors.amber,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            SizedBox(height:30.0),
            Text(
              'Current Ninja Level',
              style: TextStyle(
                color:Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height:20.0),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color:Colors.amber,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            SizedBox(height:30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width:10.0),
                Text(
                  'ninja1@gmail.com',
                  style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20.0,
                  letterSpacing: 1.0,
                  
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

