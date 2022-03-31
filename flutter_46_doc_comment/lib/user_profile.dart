import 'package:flutter/material.dart';

///Class UserProfile digunakan untuk menampilkan profile user
class UserProfile extends StatelessWidget {
 // const UserProfile({ Key? key }) : super(key: key);
  ///field ini digunakan untuk menyimpan nama user
  final String name;
  final String role;
  final String photoURL;

  /// * [name] berisi *nama user*, nilai defoutlnya `No Name`
  ///
  /// * [role] berisi peran/jabatam user, nilai defaultnya `No Role`
  ///
  /// * [photoURL] berisi **link foto user**, nilai defaultnya `null`
  /// 
  /// contoh:
  /// 
  /// ```
  ///final UserProfile profile = UserProfile(
    ///name: "nama user",
    ///role: "peran user",
    ///photoURL: "https://bleble.com/foto.png",
  ///);
  ///```
  UserProfile({this.name = "No Name",this.role = "No Role",required this.photoURL});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment : MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: NetworkImage((photoURL != null)
          ? photoURL
          : "https://icon-library.com/images/profile-pic-icon/profile-pic-icon-6.jpg"
          ),
        fit: BoxFit.cover,
        width: 400,
        height: 400,
        ),
        SizedBox(height: 10,),
        Text(name, style: TextStyle(color: Colors.red, fontSize: 20) ),
        SizedBox(height: 10,),
        Text(
          "[" + role + "]", style: TextStyle(color: Colors.red, fontSize: 18),
        ),        
      ],
      
    );
  }
}