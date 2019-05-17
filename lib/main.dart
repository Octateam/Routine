import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Routine',
      theme: ThemeData(primaryColor: Colors.grey),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, color: Colors.white,),
        title: Text('My Everyday', style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Colors.purple,
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.person),
          title: Text('Profile'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store),
          title: Text('Routine', style: TextStyle(color: Colors.purple),)
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_activity),
          title: Text('Activities')
        )
      ]),
      body: Column(
          children: <Widget>[

            Padding(padding: EdgeInsets.only(top: 45)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Center(
                    child:Container(
                      child: Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(top: 60)),
                          Icon(Icons.fastfood, color: Colors.white, size: 40.0,),
                          Padding(padding: EdgeInsets.only(top: 10),),
                          Text('Eat', style: TextStyle(
                            color: Colors.white, fontSize: 20,
                          ),)
                        ],
                      ),
                    )
                  ),
                  height: 190,
                  width: 150,
                  decoration: BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10
                      ),
                    ],
                    color: Colors.purple,
                    borderRadius: BorderRadius.all(Radius.circular(10.0),),
                  ),
                ),

                Container(
                  child: Center(
                      child:Container(
                        child: Column(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(top: 60)),
                            Icon(Icons.school, color: Colors.grey, size: 40.0,),
                            Padding(padding: EdgeInsets.only(top: 10),),
                            Text('School', style: TextStyle(
                              color: Colors.grey, fontSize: 20,
                            ),)
                          ],
                        ),
                      )
                  ),
                  height: 190,
                  width: 150,
                  decoration: BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0),),
                  ),
                ),

              ],
            ),

            Padding(padding: EdgeInsets.only(top: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Center(
                      child:Container(
                        child: Column(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(top: 60)),
                            Icon(Icons.snooze, color: Colors.grey, size: 40.0,),
                            Padding(padding: EdgeInsets.only(top: 10),),
                            Text('Sleep', style: TextStyle(
                              color: Colors.grey, fontSize: 20,
                            ),)
                          ],
                        ),
                      )
                  ),
                  height: 190,
                  width: 150,
                  decoration: BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0),),
                  ),
                ),

                Container(
                  child: Center(
                      child:Container(
                        child: Column(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(top: 60)),
                            Icon(Icons.code, color: Colors.white, size: 40.0,),
                            Padding(padding: EdgeInsets.only(top: 10),),
                            Text('Code', style: TextStyle(
                              color: Colors.white, fontSize: 20,
                            ),)
                          ],
                        ),
                      )
                  ),
                  height: 190,
                  width: 150,
                  decoration: BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                      ),
                    ],
                    color: Colors.purple,
                    borderRadius: BorderRadius.all(Radius.circular(10.0),),
                  ),
                ),

              ],
            ),
          ],
        ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
        backgroundColor: Colors.purple,
        child: Icon(Icons.schedule),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0))
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
