// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_routing/sliverappbar.dart';

/*
  #Customisasi Scaffold:
    -Appbar memiliki berbagai atribut (sangat berpengaruh terhadap tampilan web)
    -
*/

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Belajar Appbar',
        home: MySliverAppBar(), //class yg pertama kali dibuka
      )
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return(
      Scaffold(
        appBar: AppBar(
          title: Text('Custom AppBar'),
          centerTitle: true,
          leading: Icon(Icons.home),
          actions: <Widget>[
            IconButton(
              onPressed: (){
                print('Menekan Setting');    
              }, 
              icon: Icon(Icons.settings),
            ),
            IconButton(
              onPressed: (){
                print('Menekan Gallery');    
              }, 
              icon: Icon(Icons.camera_alt),
            ),
          ],
          flexibleSpace: Container(
            decoration:BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Colors.green, Colors.blue],
               ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text('Belajar Mengkostum AppBar')],
          ),
        ),
      )
    );
  }
}