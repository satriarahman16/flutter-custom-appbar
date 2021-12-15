// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
            return <Widget>[
              SliverAppBar(
                leading: IconButton(onPressed: (){
                  print('Menekan Home');
                  }, 
                icon: Icon(Icons.home)),
                backgroundColor: Colors.green,
                actions: <Widget>[
                  IconButton(
                    onPressed: () {
                      print('Menekan Settings');
                  }, 
                icon: Icon(Icons.settings))
                ],
                expandedHeight: 200.0,
                floating: false,
                snap: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  'HRIS PPNPN', 
                  style: TextStyle(
                    fontSize: 20.0, 
                    color: Colors.white
                  ),
                ),
                background: Image(
                  image: AssetImage('assets/images/images_1.jpg'), 
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverPadding(padding: EdgeInsets.all(8.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                TabBar(
                  labelColor: Colors.black87,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.person),
                      text: 'Profile',
                    ),
                    Tab(
                      icon: Icon(Icons.home_repair_service),
                      text: 'Cuti',
                    ),
                    Tab(
                      icon: Icon(Icons.pending_actions_rounded),
                      text: 'Performa',
                    ),
                  ],
                )
              ]
              )
            ))
          ];

        },
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Belajar Custom SliverAppBar')
            ],
          ),
        ),
      ),
      ),
    );
  }
}