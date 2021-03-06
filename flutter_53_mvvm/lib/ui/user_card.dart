import 'package:flutter/material.dart';
import 'package:flutter_53_mvvm/model/user.dart';

class UserCard extends StatelessWidget {
  User user;

  UserCard(this.user);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.blueGrey),
        boxShadow: [
          BoxShadow(
            color: Color(0x55000000),
            offset: Offset(1, 1),
            blurRadius: 7,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 75,
            height: 75,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: NetworkImage(user.avatar))),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Id : ${user.id}"),
              Text("Nama: " + user.firstName + " " + user.lastName),
              Text("Email: " + user.email),
            ],
          )
        ],
      ),
    );
  }
}
