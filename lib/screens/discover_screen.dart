
import 'package:app/components/BottomNavigationBar.dart';
import 'package:flutter/material.dart';

class DiscoverScreen extends StatefulWidget{


  @override
  State<StatefulWidget> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: <Widget>[
              SliverList(delegate: SliverChildListDelegate([
                Text("Discover", style: TextStyle(color: Colors.white)),
                Container(
                  child: Image.network("https://static.makeuseof.com/wp-content/uploads/2017/04/Perfect-Dating-Profile-Picture-Featured-670x335.jpg",
                    height: 270,
                    fit: BoxFit.cover
                    ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      Text("Ashley", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text("Office Manager @ Hinge", style: TextStyle(fontSize: 18)),
                      Text("25  | Boston, MA", style: TextStyle(fontSize: 18)),
                      ClipOval(child: SizedBox())
                    ]
                  )
                ),
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      FloatingActionButton(child: Icon(Icons.settings_backup_restore), onPressed: (){},),
                      FloatingActionButton(child: Icon(Icons.delete_forever), onPressed: (){},),
                      FloatingActionButton(child: Icon(Icons.favorite), onPressed: (){},),
                      FloatingActionButton(child: Icon(Icons.star), onPressed: (){},),
                    ],
                  )
                )
              ]))
            ],
          ),
        )
      ),
  bottomNavigationBar: BottomNavBar(index: 0,),
    );
  }
}