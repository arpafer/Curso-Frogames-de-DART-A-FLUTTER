
import 'dart:io';

import 'package:profile_app/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
   static late SharedPreferences _preferences;
   static String _name = 'Ingrese un nuevo nombre';
   static String _email = 'Ingrese un nuevo email';
   static String _website = "Ingrese un nuevo website";
   static String _phone = "Ingrese un nuevo número telefónico";
   static dynamic _photoPath = "assets/icons/usuario.png";
   static double _latitude = 0.0;
   static double _longitude = 0.0;

   static Future init() async {
     _preferences = await SharedPreferences.getInstance();
   }

   static set(String name, String email, String website, String phone, String photoPath, double latitud, double longitud) {
     UserPreferences.name = name;
     UserPreferences.email = email;
     UserPreferences.website = website;
     UserPreferences.phone = phone;
     UserPreferences.photoPath = photoPath;     
     UserPreferences.latitude = latitude;
     UserPreferences.longitude = longitude;
   }

   static set name(String name) {
    _name = name;
    _preferences.setString(keyName, name);
   }

   static String get name {
     return _preferences.getString(keyName)?? _name;
   }

   static set email(String email) {
    _email = email;
    _preferences.setString(keyEmail, email);
   }

   static String get email {
    return _preferences.getString(keyEmail)?? _email;
   }

   static set website(String website) {
    _website = website;
    _preferences.setString(keyWebSite, website);
   }

   static String get website {
    return _preferences.getString(keyWebSite)?? _website;
   }

   static set phone(String phone) {
    _phone = phone;
    _preferences.setString(keyPhone, _phone);
   }

   static String get phone {
    return _preferences.getString(keyPhone)?? _phone;
   }

   static set photoPath(dynamic photoPath) {
    _photoPath = photoPath;
    _preferences.setString(keyPhotoPath, photoPath);
   }

   static dynamic get photoPath {
    var path = _preferences.getString(keyPhotoPath);
    if (path != null) {
      return File(path);
    } else {
      return _photoPath;
    }    
   }

   static set latitude(double latitude) {
    _latitude = latitude;
    _preferences.setDouble(keyLatitude, latitude);
   }

   static double get latitude {
    return _preferences.getDouble(keyLatitude)?? _latitude;
   }

   static set longitude(double longitude) {
    _longitude = longitude;
    _preferences.setDouble(keyLongitude, longitude);
   }

   static double get longitude {
    return _preferences.getDouble(keyLongitude)?? _longitude;
   }

   static void removeValues() {
    _preferences.remove(keyName);
    _preferences.remove(keyEmail);
    _preferences.remove(keyPhone);
    _preferences.remove(keyPhotoPath);
    _preferences.remove(keyWebSite);
    _preferences.remove(keyLatitude);
    _preferences.remove(keyLongitude);
   }
}