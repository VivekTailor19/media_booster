import 'package:shared_preferences/shared_preferences.dart';

class ApnaShared
{


   Future<void> setdata({required String name,required String password,required String email,required bool login})
   async {
     SharedPreferences prefs = await SharedPreferences.getInstance();

     prefs.setString("uname",name);
     prefs.setString('uemail',email);
     prefs.setString('upassword',password);
     prefs.setBool('ulogin',login);


   }

  Future<Map<dynamic, dynamic>> readdata()
  async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String? name = prefs.getString("uname");
    String? email = prefs.getString("uemail");
    String? password = prefs.getString("upassword");
    bool? login = prefs.getBool("ulogin");

    return {'gname':name,'gemail':email,'gpassword':password,'getted':login};

    // LoginModel lm = LoginModel(email: email,password: password,islogin: login);
    // return lm;

  }

  Future<void> dataclear()
  async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.clear();
  }


}

