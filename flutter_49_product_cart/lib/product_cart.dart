import 'package:flutter/material.dart';

const Color firstColor = Colors.red;
const Color secondColor = Colors.amber;

class productCart extends StatelessWidget {
  //const productCart({Key? key}) : super(key: key);
  final String imageURL;
  final String name;
  final String price;
  final int quantity;
  final String notification;
  final Function onAddCartTap;
  final Function() onIncTap;
  final Function() onDecTap;

  final TextStyle textStyle = TextStyle(
      fontFamily: "Pacifico",
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: firstColor);

  productCart(
      {required this.imageURL,
      required this.name,
      required this.price,
      this.quantity=0,
      required this.notification,
      required this.onAddCartTap,
      required this.onIncTap,
      required this.onDecTap });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      AnimatedContainer(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.only(left: 80, right: 80),
        width: 130,
        height: (notification != null) ?  530 : 100,
        duration: Duration(microseconds: 300),
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(
            blurRadius: 3, 
            offset: Offset(1, 1),
            color: Colors.black.withOpacity(0.3)
          )],
          borderRadius: BorderRadius.only(
            bottomLeft:Radius.circular(8),
            bottomRight: Radius.circular(8)),
            color: secondColor,
            ),
            child: Align(alignment: Alignment.bottomCenter,
            child: Text((notification != null)? notification : "null", 
                    style: textStyle.copyWith(fontSize: 16, color: Colors.black), ),),
            ),
            
      Container(
        width: 300,
        height: 500,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 6,
                offset: Offset(1, 1),
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 300,
                  height: 300,
                  decoration: (BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      image: DecorationImage(
                          image: NetworkImage(imageURL), fit: BoxFit.cover))),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Text(
                    name,
                    style: textStyle,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 5, right: 5),
                    child:
                        Text(price, style: textStyle.copyWith(fontSize: 14))),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 280,
                  height: 30,
                  decoration:
                      BoxDecoration(border: Border.all(color: firstColor)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: onIncTap,
                        child: Container(
                          width: 30,
                          height: 30,
                          color: firstColor,
                          child: Icon(
                            Icons.add,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(quantity.toString(), style: textStyle.copyWith(fontSize: 18),),
                      GestureDetector(
                        onTap: onDecTap,
                        child: Container(
                          width: 30,
                          height: 30,
                          color: firstColor,
                          child: Icon(
                            Icons.remove,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(
                    height: 40,
                    width: 280,
                    child: RaisedButton(
                        onPressed: () {}, //onAddTapCart,
                        child: Icon(
                          Icons.add_shopping_cart_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                        color: firstColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        )))),
                SizedBox(
                  height: 10,
                )
              ],
            )
          ],
        ),
      )
    ]);
  }
}


