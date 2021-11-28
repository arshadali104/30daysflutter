import "package:flutter/material.dart";
class  HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('atif') ,
      ),
        body: Center(
          child:Container(
            child: Text("Muhammad Arshad khan")
          ),
        ),
        drawer: Drawer(),
      );
  }
}