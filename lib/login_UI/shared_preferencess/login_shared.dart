import 'package:shared_preferences/shared_preferences.dart';

class ApnaShared
{

  String? email = "";
  String? password = "";

   Future<void> setdata({required String name,required String password,required String email,bool? login})
   async {
     SharedPreferences prefs = await SharedPreferences.getInstance();

     prefs.setString('uname',name);
     prefs.setString('uemail',email);
     prefs.setString('upassword',password);
     prefs.setBool('ulogin',login!);


   }

  Future<LoginModel> readdata()
  async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String name = prefs.getString("uname")!;
    String email = prefs.getString("uemail")!;
    String password = prefs.getString("upassword")!;
    bool? login = prefs.getBool("ulogin");
    LoginModel lm = LoginModel(name:name,email: email,password: password,islogin: login);
    return lm;

  }





}

class LoginModel
{
  String? name,email,password;
  bool? islogin;
  LoginModel({this.name,this.email, this.password,this.islogin});
}