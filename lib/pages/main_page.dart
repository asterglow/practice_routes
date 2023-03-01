// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:routes/routes/routes.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  dynamic result = 'Data not received yet';
  bool _toggle = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Main Page'),
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
              )
                  .animate()
                  .fadeIn(duration: Duration(milliseconds: 1200))
                  .scaleX(begin: 0.5, end: 1.5)
                  .then()
                  .scaleX(end: 1 / 1.5, duration: Duration(milliseconds: 1200)),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () async {
                  var resultback = await Navigator.of(context).pushNamed(
                      RouteManager.thirdPage,
                      arguments: {'name': 'AsterGlow'});
                  setState(() {
                    result = resultback;
                  });
                },
                child: Text(
                  'Go to third page',
                ),
              )
                  .animate(
                    // onPlay: (controller) => controller.loop(count: 3),
                  )
                  .shake(hz: 6, curve: Curves.easeOut , duration: Duration(milliseconds: 2400)),
              SizedBox(
                height: 30,
              ),
              // Container(height: 40, padding: EdgeInsets.all(10),
              //   decoration: BoxDecoration(
              //       color: Colors.lime,
              //       borderRadius: BorderRadius.circular(10)),
              //   child: Text('$result'),
              // )
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onEnter: (event) => setState(() {
                    _toggle = !_toggle;
                  }),
                child: GestureDetector(
                  onTap: () => setState(() {
                    _toggle = !_toggle;
                  }),
                  child: Text('$result')
                      .animate(target: _toggle ? 1 : 0)
                      .slideY(begin: 2, duration: Duration(milliseconds: 1200))
                      // .scaleXY(
                      //     begin: 2, duration: Duration(milliseconds: 1200)),
                ),
              )
            ],
          ),
        ));
  }
}
