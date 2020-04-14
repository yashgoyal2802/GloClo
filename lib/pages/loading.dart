import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    // Make the request
    Response response =
        await get('http://worldtimeapi.org/api/timezone/Asia/Kolkata');
    Map data = jsonDecode(response.body);

    // get properties from data
    String datetime = data['datetime'];
    String offsetH = data['utc_offset'].substring(1, 3);
    String offsetM = data['utc_offset'].substring(4, 6);

    // creating a datetime object
    DateTime now = DateTime.parse(datetime);
    now = now
        .add(Duration(hours: int.parse(offsetH), minutes: int.parse(offsetM)));
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Loading Screen"),
    );
  }
}
