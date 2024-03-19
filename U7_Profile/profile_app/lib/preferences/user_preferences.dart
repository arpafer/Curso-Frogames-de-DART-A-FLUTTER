
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
   static late SharedPreferences _preferences;
   static String _name = '';
   static String _email = '';
   static String _website = "";
   static String _phone = "";
   static String _photoPath = "";
   static double _latitude = 0.0;
   static double _longitude = 0.0;

   static Future init() async {
     _preferences = await SharedPreferences.getInstance();
   }
}