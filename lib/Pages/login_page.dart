import "package:flutter/material.dart";
import 'package:flutter_application_1/utils/routes.dart';
class  LoginPage extends StatefulWidget {
  

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton=false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login_iamge.png",
          fit:BoxFit.cover,),
          SizedBox(
            height: 20.0,
            ),
            
          Text(
            "welcome$name",
            style: TextStyle(
            fontSize: 28,
            fontWeight:FontWeight.bold,
          ),
          ),
          SizedBox(
            height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(children: [
                TextFormField(decoration:
              InputDecoration(hintText: "Enter username",
              labelText: "username",
              ),
              onChanged: (value){
                name=value;
                setState(() {                 
                });
              },
              ),
              TextFormField(
                obscureText: true,
                decoration:
              InputDecoration(hintText: "Enter password",
              labelText: "password",
              ),
              ),
              InkWell(
                onTap: ()async{
                  setState(() {
                    changeButton=true;
                  });
                  await Future.delayed(Duration(seconds: 3));
                  Navigator.pushNamed(context, Myroutes.homeRoute);
                },
                child: AnimatedContainer( 
                  duration: Duration(seconds: 1), 
                width: changeButton ? 50: 150,
                height: 50,
                
                alignment: Alignment.center,
                child: Text(
                "login",
                style:TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18),
                ),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changeButton ? 50: 8),
              
                )
              
                ),
              )
              
              // ElevatedButton(
              //   onPressed: (){
              //   Navigator.pushNamed(context, Myroutes.homeRoute);
              //   }, 
              //   child: Text("Login"),
              //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),

              // ),                
              ],),
            )
        ],
        ),
      );
  }
}