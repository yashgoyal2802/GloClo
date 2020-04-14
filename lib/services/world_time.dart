import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location; // Location Name for UI
  String time; // te time in that location
  String flag; // url to an flag asset icon
  String url; // location url for api endpoint

  WorldTime({this.location, this.flag, this.url});

  void getTime() async {
    // Make the request
    Response response = await get('http://worldtimeapi.org/api/timezone/$url');
    Map data = jsonDecode(response.body);

    // get properties from data
    String datetime = data['datetime'];
    String offsetH = data['utc_offset'].substring(1, 3);
    String offsetM = data['utc_offset'].substring(4, 6);

    // creating a datetime object
    DateTime now = DateTime.parse(datetime);
    now = now
        .add(Duration(hours: int.parse(offsetH), minutes: int.parse(offsetM)));

    // set the time
    time = now.toString();
  }
}
