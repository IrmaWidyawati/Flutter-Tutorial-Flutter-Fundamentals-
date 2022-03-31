import 'package:flutter/material.dart';

class CustomProgressBar extends StatelessWidget {
  //const CustomProgressBar({ Key? key }) : super(key: key);
  final double width;
  final int value;
  final int totalValue;
  CustomProgressBar(
      {required this.width, required this.value, required this.totalValue});

  @override
  Widget build(BuildContext context) {
    double ratio = value / totalValue;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.timer,
          color: Colors.grey.shade700,
        ),
        SizedBox(
          width: 5,
        ),
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5)),
              width: width,
              height: 10,
            ),
            Material(
              borderRadius: BorderRadius.circular(5),
              elevation: 3,
              child: AnimatedContainer(
                height: 10,
                width: width * ratio,
                duration: Duration(milliseconds: 500),
                decoration: BoxDecoration(
                    color: (ratio < 0.3)
                        ? Colors.red
                        : (ratio < 0.6)
                            ? Colors.amber.shade400
                            : Colors.lightGreen,
                    borderRadius: BorderRadius.circular(5)),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class TimeState with ChangeNotifier {
  int _time = 15;
  int get time => _time;
  set time(int newTime) {
    _time = newTime;
    notifyListeners();
  }
}
