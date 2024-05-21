import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'game.dart';

class homepage extends StatelessWidget{
    String   player1;
    String  player2;
  homepage({required this.player1,required this.player2});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration:  BoxDecoration(color: Colors.black),
              height: 150,
              width: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("xo",style: TextStyle(color: Color(0xffA29F9F),fontSize: 40),),

                  Text("game",style: TextStyle(color: Color(0xffA29F9F),fontSize: 40),)
                ],
              ),
            ),
             SizedBox(height: 20,),
            Container(
              decoration:  BoxDecoration(color: Colors.black),
              height: 150,
              width: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Text("desined by ",style: TextStyle(color: Color(0xffA29F9F) ,fontSize: 25),),
                  SizedBox(height: 20,),
                  Text("M.ElDeeB ",style: TextStyle(color: Color(0xffA29F9F) ,fontSize: 30),)
                ],
              ),
            ),
            SizedBox(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Column(
                     children: [
                       Text("player1 ",style: TextStyle(color: Color(0xffA29F9F) ,fontSize: 25),),
                       Text("$player1",style: TextStyle(color: Color(0xffA29F9F) ,fontSize: 25),),
                     ],
                   ),
                   SizedBox(height: 10,),
                   Column(
                     children: [
                       Text("player2 ",style: TextStyle(color: Color(0xffA29F9F) ,fontSize: 25),),
                       Text(player2.toString(),style: TextStyle(color: Color(0xffA29F9F) ,fontSize: 25),),
                     ],
                   ),


               ],),

             SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return game(
                    player1: player1,
                    player2: player2,);
                }));
              },
              child:
              Container(
                margin:  EdgeInsets.only(top: 20),
                decoration:  BoxDecoration(color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                height: 70,
                width: 180,
                alignment: Alignment.center,
                child:  Text("Play",style: TextStyle(color: Color(0xffb0aaaa),fontSize: 35,fontWeight: FontWeight.bold),),
              ),
            ),
          ],
        ),

      ),

    );
  }

}