// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:routes/routes/routes.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  dynamic result = 'Data not received yet';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lokesh\'s Main Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteManager.secondPage);
                },
                child: Text(
                  'Go to second page',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () async {
                  var resultback=await
                  Navigator.of(context).pushNamed(RouteManager.thirdPage,
                      arguments: {'name': 'Lokesh'});
                  setState(() {
                    result=resultback;
                  });    
                },
                child: Text(
                  'Go to third page',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(height: 40, padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.lime,
                    borderRadius: BorderRadius.circular(10)),
                child: Text('$result'),
              ),
            ],
          ),
        ));
  }
}
