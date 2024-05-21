import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class game extends StatefulWidget{

  game({super.key,required this.player1,required this.player2});
  final String  player1;
  final String  player2;
  @override
  _gameState createState() => _gameState(player1,player2);
}
class _gameState extends State<game> {
int Xscore=0;
int Oscore=0;
bool xturn = true;
int click =0;
String name1 ;
String name2 ;
_gameState(this.name1,this.name2);
List board = ["", "", "", "", "", "", "", "", ""];
winner(){
  click++;
if (board[0]==board[1]&&board[0]==board[2]&&board[0]=="X"){
  Xscore++;
  click=0;
  xturn = true;
  board = ["", "", "", "", "", "", "", "", ""];
 }else if(board[0]==board[1]&&board[0]==board[2]&&board[0]=="O"){
  Oscore++;
  click=0;
  xturn = true;
  board = ["", "", "", "", "", "", "", "", ""];
 }else if (board[3]==board[4]&&board[3]==board[5]&&board[3]=="X"){
  Xscore++;
  click=0;
  xturn = true;
  board = ["", "", "", "", "", "", "", "", ""];
 }else if (board[3]==board[4]&&board[3]==board[5]&&board[3]=="O"){
  Oscore++;
  click=0;
  xturn = true;
  board = ["", "", "", "", "", "", "", "", ""];
 }else if (board[6]==board[7]&&board[6]==board[8]&&board[6]=="X"){
  Xscore++;
  click=0;
  xturn = true;
  board = ["", "", "", "", "", "", "", "", ""];
 }else if (board[6]==board[7]&&board[6]==board[8]&&board[6]=="O"){
  Oscore++;
  click=0;
  xturn = true;
  board = ["", "", "", "", "", "", "", "", ""];
  }else if (board[0]==board[3]&&board[0]==board[6]&&board[0]=="X"){
  Xscore++;
  click=0;
  xturn = true;
  board = ["", "", "", "", "", "", "", "", ""];
 }else if (board[0]==board[3]&&board[0]==board[6]&&board[0]=="O"){
  Oscore++;
  click=0;
  xturn = true;
  board = ["", "", "", "", "", "", "", "", ""];
}else if (board[1]==board[4]&&board[1]==board[7]&&board[1]=="X"){
  Xscore++;
  click=0;
  xturn = true;
  board = ["", "", "", "", "", "", "", "", ""];
}else if (board[1]==board[4]&&board[1]==board[7]&&board[1]=="O"){
  Oscore++;
  click=0;
  xturn = true;
  board = ["", "", "", "", "", "", "", "", ""];
}else if (board[2]==board[5]&&board[2]==board[8]&&board[2]=="X"){
  Xscore++;
  click=0;
  xturn = true;
  board = ["", "", "", "", "", "", "", "", ""];
}else if (board[2]==board[5]&&board[2]==board[8]&&board[2]=="O"){
  Oscore++;
  click=0;
  xturn = true;
  board = ["", "", "", "", "", "", "", "", ""];
}else if (board[0]==board[4]&&board[0]==board[8]&&board[0]=="X"){
  Xscore++;
  click=0;
  xturn = true;
  board = ["", "", "", "", "", "", "", "", ""];
}else if (board[0]==board[4]&&board[0]==board[8]&&board[0]=="O"){
  Oscore++;
  click=0;
  xturn = true;
  board = ["", "", "", "", "", "", "", "", ""];
}else if (board[2]==board[4]&&board[2]==board[6]&&board[2]=="X"){
  Xscore++;
  click=0;
  xturn = true;
  board = ["", "", "", "", "", "", "", "", ""];
}else if (board[2]==board[4]&&board[2]==board[6]&&board[2]=="O"){
  Oscore++;
  click=0;
  xturn = true;
  board = ["", "", "", "", "", "", "", "", ""];
}else if (click==9){
  click =0;
  xturn = true;
  board = ["", "", "", "", "", "", "", "", ""];
}
else if ( Xscore ==4 ){
  board = ["", "", "", "", "", "", "", "", ""];
  Xscore = 0;
  Oscore = 0;
  click =0;
  xturn = true;
}else if ( Oscore ==4 ){
  board = ["", "", "", "", "", "", "", "", ""];
  Xscore = 0;
  Oscore = 0;
  click =0;
  xturn = true;
}
}
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Color(0xffA29F9F),
       title:Text("xogame",style: TextStyle(color: Colors.black,fontSize: 30)) ,
     ),
     body: Container(
              color: Colors.black,
       height: double.infinity,
       width: double.infinity,
       child:
       Column(mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.end,
         children: [
           Expanded(
             child: Row(
               children: [
                 Text(" \t \t score for \n  \t \t  $name1",style: TextStyle(color: Color(0xffA29F9F),fontSize: 30)) ,
                 SizedBox(width: 60,),
                 Text("score for \n $name2 ",style: TextStyle(color: Color(0xffA29F9F),fontSize: 30)) ,
               ],
             ),
           ),
           Expanded(
             child: Row(
               children: [
                 Expanded(
                   child: InkWell(
                     onTap: (){
                     },
                     child: Container(
                       margin: EdgeInsets.all(20),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(30)),
                         border: Border.all(color:  Color(0xffA29F9F),width: 4),
                           color: Colors.black),
                       height: 75,
                       width: 75,
                       alignment: Alignment.center,
                       child: Text(Xscore.toString(),style: TextStyle(color:  Color(0xffA29F9F),fontSize: 30,fontWeight: FontWeight.bold),),
                     ),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Expanded(
                   child: InkWell(
                     onTap: (){

                     },
                     child: Container(
                       margin: EdgeInsets.all(20),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(30)),
                           border: Border.all(color: Color(0xffA29F9F),width: 4),
                           color: Colors.black),
                       height: 75,
                       width: 75,
                       alignment: Alignment.center,
                       child: Text(Oscore.toString(),style: TextStyle(color: Color(0xffA29F9F),fontSize: 30,fontWeight: FontWeight.bold),),
                     ),
                   ),
                 ),

               ],
             ),
           ),
           Expanded(
             child: Row(
               children: [
                 Expanded(
                   child: InkWell (onTap:() {
                     setState(() {
                     });
                      if(board[0] == ""){
                       if(xturn == true){
                         board[0] = "X";
                       }else{
                         board[0] = "O";
                       }
                         xturn = !xturn;
                      }
                        winner();
                   },

                     child: Container(
                       margin: EdgeInsets.all(20),
                       decoration:
                       BoxDecoration(color: Colors.black,
                       border: Border.all(color: Color(0xffA29F9F),width: 3)),
                       height: 80,
                       width: 80,
                       alignment: Alignment.center,
                       child: Text(board[0],style: TextStyle(color: Color(0xffA29F9F),fontSize: 30,fontWeight: FontWeight.bold),),
                     ),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Expanded(
                   child: InkWell (onTap:() {
                     setState(() {

                     });
                     if(board[1] == ""){
                       if(xturn == true){
                         board[1] = "X";
                       }else{
                         board[1] = "O";
                       }
                       xturn = !xturn;
                     }
                     winner();

                   },

                     child: Container(
                       margin: EdgeInsets.all(20),
                       decoration:
                       BoxDecoration(color: Colors.black,
                           border: Border.all(color: Color(0xffA29F9F),width: 3)),
                       height: 80,
                       width: 80,
                       alignment: Alignment.center,
                       child: Text(board[1],style: TextStyle(color: Color(0xffA29F9F),fontSize: 30,fontWeight: FontWeight.bold),),
                     ),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Expanded(
                   child: InkWell (onTap:() {
                     setState(() {

                     });
                     if(board[2] == ""){
                       if(xturn == true){
                         board[2] = "X";
                       }else{
                         board[2] = "O";
                       }
                       xturn = !xturn;
                     }
                     winner();

                   },

                     child: Container(
                       margin: EdgeInsets.all(20),
                       decoration:
                       BoxDecoration(color: Colors.black,
                           border: Border.all(color: Color(0xffA29F9F),width: 3)),
                       height: 80,
                       width: 80,
                       alignment: Alignment.center,
                       child: Text(board[2],style: TextStyle(color: Color(0xffA29F9F),fontSize: 30,fontWeight: FontWeight.bold),),
                     ),
                   ),
                 ),
               ],
             ),
           ),
           Expanded(
             child: Row(
               children: [
                 Expanded(
                   child: InkWell (onTap:() {
                     setState(() {

                     });
                     if(board[3] == ""){
                       if(xturn == true){
                         board[3] = "X";
                       }else{
                         board[3] = "O";
                       }
                       xturn = !xturn;
                     }
                     winner();

                   },

                     child: Container(
                       margin: EdgeInsets.all(20),
                       decoration:
                       BoxDecoration(color: Colors.black,
                           border: Border.all(color: Color(0xffA29F9F),width: 3)),
                       height: 80,
                       width: 80,
                       alignment: Alignment.center,
                       child: Text(board[3],style: TextStyle(color: Color(0xffA29F9F),fontSize: 30,fontWeight: FontWeight.bold),),
                     ),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Expanded(
                   child: InkWell (onTap:() {
                     setState(() {

                     });
                     if(board[4] == ""){
                       if(xturn == true){
                         board[4] = "X";
                       }else{
                         board[4] = "O";
                       }
                       xturn = !xturn;
                     }
                     winner();

                   },

                     child: Container(
                       margin: EdgeInsets.all(20),
                       decoration:
                       BoxDecoration(color: Colors.black,
                           border: Border.all(color:Color(0xffA29F9F),width: 3)),
                       height: 80,
                       width: 80,
                       alignment: Alignment.center,
                       child: Text(board[4],style: TextStyle(color: Color(0xffA29F9F),fontSize: 30,fontWeight: FontWeight.bold),),
                     ),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Expanded(
                   child: InkWell (onTap:() {
                     setState(() {

                     });
                     if(board[5] == ""){
                       if(xturn == true){
                         board[5] = "X";
                       }else{
                         board[5] = "O";
                       }
                       xturn = !xturn;
                     }
                     winner();

                   },

                     child: Container(
                       margin: EdgeInsets.all(20),
                       decoration:
                       BoxDecoration(color: Colors.black,
                           border: Border.all(color: Color(0xffA29F9F),width: 3)),
                       height: 80,
                       width: 80,
                       alignment: Alignment.center,
                       child: Text(board[5],style: TextStyle(color: Color(0xffA29F9F),fontSize: 30,fontWeight: FontWeight.bold),),
                     ),
                   ),
                 ),
               ],
             ),
           ),
           Expanded(
             child: Row(
               children: [
                 Expanded(
                   child: InkWell (onTap:() {
                     setState(() {

                     });
                     if(board[6] == ""){
                       if(xturn == true){
                         board[6] = "X";
                       }else{
                         board[6] = "O";
                       }
                       xturn = !xturn;
                     }
                     winner();

                   },

                     child: Container(
                       margin: EdgeInsets.all(20),
                       decoration:
                       BoxDecoration(color: Colors.black,
                           border: Border.all(color: Color(0xffA29F9F),width: 3)),
                       height: 80,
                       width: 80,
                       alignment: Alignment.center,
                       child: Text(board[6],style: TextStyle(color: Color(0xffA29F9F),fontSize: 30,fontWeight: FontWeight.bold),),
                     ),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Expanded(
                   child: InkWell (onTap:() {
                     setState(() {

                     });
                     if(board[7] == ""){
                       if(xturn == true){
                         board[7] = "X";
                       }else{
                         board[7] = "O";
                       }
                       xturn = !xturn;
                     }
                     winner();

                   },

                     child: Container(
                       margin: EdgeInsets.all(20),
                       decoration:
                       BoxDecoration(color: Colors.black,
                           border: Border.all(color: Color(0xffA29F9F),width: 3)),
                       height: 80,
                       width: 80,
                       alignment: Alignment.center,
                       child: Text(board[7],style: TextStyle(color: Color(0xffA29F9F),fontSize: 30,fontWeight: FontWeight.bold),),
                     ),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Expanded(
                   child: InkWell (onTap:() {
                     setState(() {

                     });
                     if(board[8] == ""){
                       if(xturn == true){
                         board[8] = "X";
                       }else{
                         board[8] = "O";
                       }
                       xturn = !xturn;
                     }
                     winner();

                   },

                     child: Container(
                       margin: EdgeInsets.all(20),
                       decoration:
                       BoxDecoration(color: Colors.black,
                           border: Border.all(color: Color(0xffA29F9F),width: 3)),
                       height: 80,
                       width: 80,
                       alignment: Alignment.center,
                       child: Text(board[8],style: TextStyle(color: Color(0xffA29F9F),fontSize: 30,fontWeight: FontWeight.bold),),
                     ),
                   ),
                 ),
               ],
             ),
           ),
           Expanded(
             child: Row(
               children: [
                 Expanded(
                   child: InkWell(
                     onTap: (){
                       setState(() {

                       });
                       board = ["", "", "", "", "", "", "", "", ""];
                       Xscore = 0;
                       Oscore = 0;
                       xturn = true;
                     },
                     child: Container(
                       margin: EdgeInsets.all(20),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(30)),
                           border: Border.all(color: Color(0xffA29F9F),width: 4),
                           color: Colors.black),
                       height: 75,
                       width: 75,
                       alignment: Alignment.center,
                       child: Text("Reset",style: TextStyle(color: Color(0xffA29F9F),fontSize: 30,fontWeight: FontWeight.bold),),
                     ),
                   ),
                 ),
               ],
             ),
           ),
         ],
       ),
     ),
   );
  }
}

