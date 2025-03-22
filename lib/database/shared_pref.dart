import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  Future<void> createDB(
      String email, String password, int age, String username) async {
    final sPrefRef = await SharedPreferences.getInstance();
    // set value in shared pref
    sPrefRef.setString("username", username);
    sPrefRef.setString("email", email);
    sPrefRef.setString("password", password);
    sPrefRef.setInt("age", age);
  }

  Future<String?> getDB() async {
    final sPrefRef = await SharedPreferences.getInstance();
    sPrefRef.getString("email");
    sPrefRef.getString("username");
    sPrefRef.getString("password");
    sPrefRef.getInt("age");
    return sPrefRef.getString("email");
  }

  Future<bool> emailRegistered(String email) async {
    final sPrefRef = await SharedPreferences.getInstance();
    var emailRegistred = sPrefRef.getString("email");
    if (emailRegistred != null && emailRegistred.contains(email)) {
      return true;
    }
    return false;
  }
}
