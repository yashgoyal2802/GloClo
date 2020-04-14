import 'package:flutter/material.dart';
import 'package:gloclo/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() {
    WorldTime instance = WorldTime(
        location: 'Berlin', flag: 'germany.jpg', url: 'Europe/Berlin');
    instance.getTime();
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Loading Screen"),
    );
  }
}
