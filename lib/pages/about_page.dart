import 'package:flutter/material.dart';
import 'package:localization/routes/route_names.dart';
class AboutPage extends StatefulWidget {
  AboutPage({Key key}) : super(key: key);
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page"),
      ),
      body: Container(child: MaterialButton(
        color: Colors.blue,
        child: Text("Navigate to settings Page"),
        onPressed: (){
          Navigator.pushNamed(context, settingsRoute);
        },
      ),),
    );
  }
}
