import 'package:shared_preferences/shared_preferences.dart';

sharedprefsetstring(String key,String value)async{
  SharedPreferences _pref=await SharedPreferences.getInstance();
  _pref.setString(key, value);
}
Future<String?> sharedprefgetstring(String key)async{
  SharedPreferences _pref=await SharedPreferences.getInstance();
  return _pref.getString(key);
}
sharedprefclear()async{
  SharedPreferences _pref=await SharedPreferences.getInstance();
_pref.clear();
}