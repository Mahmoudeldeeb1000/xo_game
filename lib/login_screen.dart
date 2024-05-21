import 'package:flutter/material.dart';
import 'package:play_xo/homepage.dart';

class login_screen extends StatefulWidget{
  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  GlobalKey<FormState>  formkey = GlobalKey();

 late String  player1;

   late String  player2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login screen"),
        centerTitle: true,
      ),
      body:
      Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
            key:formkey ,
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  style: TextStyle(color: Colors.white),

                  validator: (value){
                    if(value==null || value.isEmpty) {
                      return"player1 name is required";
                    }
                    else{
                      return null;
                    }
                  },
                  decoration:InputDecoration (
                      hintText: "please enter player1 name ",
                      hintStyle: TextStyle(color: Colors.white,fontSize: 20),
                      // labelText: "your email ",labelStyle: TextStyle(fontSize: 20),
                      enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              color: Colors.blue,
                              width: 3
                          )
                      ) ,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              color: Colors.green,
                              width: 3
                          )
                      ) ,
                  ),
                  onFieldSubmitted: (value){
                    player1 = value;
                  },
                  onChanged: (value){
                    player1 = value;
                  },
                ),
                SizedBox(height: 15),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return"player2 name is required";
                    }  else{
                      return null;
                    }
                  },
                  onChanged: (value){
                    player2 = value;
                  },
                  decoration:InputDecoration (
                      hintText: "please enter player2 name ",
                    hintStyle: TextStyle(color: Colors.white,fontSize: 20),
                      // labelText: "your password ",labelStyle: TextStyle(fontSize: 20),
                      enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              color: Colors.blue,
                              width: 3
                          )
                      ) ,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              color: Colors.green,
                              width: 3
                          )
                      ) ,


                  ),
                  onFieldSubmitted: (value){
                    player2 = value;
                  },
                ),
                SizedBox(height: 15),
                MaterialButton(
                  onPressed: (){
                    if(formkey.currentState!.validate() ==true)
                    {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder:(context){
                                return homepage(
                                  player1: player1,
                                  player2:player2,);
                              } ));
                    }
                  },
                  color: Colors.blue,
                  child:
                  Text("login",style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// inkwell = GestureDetector