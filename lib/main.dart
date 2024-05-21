import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:play_xo/homepage.dart';
import 'package:play_xo/login_screen.dart';

main(){
  runApp(base());
}
class base extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login_screen(),
    );
  }

}


