import 'package:flutter/material.dart';
import 'package:localization/classes/language.dart';
import 'package:localization/routes/route_names.dart';
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  void _changeLanguage(Language language){
    //print(language.languageCode);
    Locale _temp;
    switch(language.languageCode){
      case 'en':
        _temp = Locale(language.languageCode,'US');
        break;
      case 'ar':
        _temp = Locale(language.languageCode,'SA');
        break;
      default:_temp = Locale(language.languageCode,'US');
    }
    MyApp.setLocale(context,_temp);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton(
              onChanged: (Language language){
                _changeLanguage(language);
              },
              icon: Icon(Icons.language),
              underline: SizedBox(),
              items: Language.languageList()
                .map<DropdownMenuItem<Language>>((lang) => DropdownMenuItem(
                value: lang,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>
                  [
                    Text(lang.flag,style: TextStyle(fontSize: 30),),
                    Text(lang.name),
                  ],
                ),
              )).toList()
            ),
          )


        ],
      ),
     // drawer: _drawerList(),
      body: Container(child: Text("Personal Information"),),
    );
  }
}
