import 'package:shared_preferences/shared_preferences.dart';

class IntroShared
{

    Future<void> setData({required bool setdata})
    async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      pref.setBool("setintro",setdata );
    }

    Future<Map<String, bool?>> readData()
    async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      bool? getintro = pref.getBool("setintro");

      return {"getted":getintro};
    }
}