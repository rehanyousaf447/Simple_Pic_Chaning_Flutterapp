import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(myapp2());


class myapp2 extends StatefulWidget{

  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<myapp2>{
    var _counter=-1;
    var _pic;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("BESTIESS"),
          backgroundColor: Colors.blueGrey[900],
        ),
        backgroundColor: Colors.blueGrey[100],
        body: Center(
          child: Image(
            image: AssetImage('$_pic'
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(height: 50.0,),
          color: Colors.blueGrey,
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'NEXT',
          child: Icon(Icons.navigate_next),
          onPressed: (){
            _pic=changesImages();
          },
        ),
        floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
  String changesImages()
  {
    setState(() {
     // if(_counter!=0)
      _counter++;
      _counter=_counter%5;


    });
    return 'images/pic$_counter.jpeg';
  }



}

