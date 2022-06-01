import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 void main()=> runApp(const MyApp());

 class MyApp extends StatelessWidget {
   final String data = 'Top Secret Data';
   const MyApp({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Provider<String>(
       create: (context){
         return data;
       },
       child: MaterialApp(
         home: Scaffold(
           appBar: AppBar(
             centerTitle: true,
             title: Text(data),
           ),
           body: Level1(data: data),
         ),
       ),
     );
   }
 }

 class Level1 extends StatelessWidget {
   final String data;
   const Level1({Key? key, required this.data}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Container(
       child: Level2(data: data,),
     );
   }
 }
 
 class Level2 extends StatelessWidget {
   final String data;
   const Level2({Key? key, required this.data}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Container(
       child: Level3(data: data,),
     );
   }
 }
 
 class Level3 extends StatelessWidget {
   final String data;
   const Level3({Key? key, required this.data}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Text(data);
   }
 }
 