
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart.dart';
import 'money.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (BuildContext context) => Money(),
          ),
          ChangeNotifierProvider(
            create: (BuildContext context) => cart(),
          )
        ],
        child: Scaffold(
          floatingActionButton: Consumer<Money>(
            builder:(context, Money, _) => Consumer<cart>(
              builder:(context, cart, _)=> FloatingActionButton(
                onPressed: () {
                  if (Money.balance >= 10000) {
                  cart.quantity+=1;
                  Money.balance-=10000;
                }
                },
                child: Icon(Icons.add_shopping_cart),
                backgroundColor: Colors.amber,
              ),
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.amber.shade200,
            title: Text(
              "Multi Provider",
              style: TextStyle(color: Colors.amber.shade700),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Balance"),
                    Container(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Consumer<Money>(
                          builder: (context, Money, _) => Text(
                            Money.balance.toString(),
                            style: TextStyle(
                                color: Colors.amber.shade700,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      height: 30,
                      width: 150,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.amber.shade300,
                          border: Border.all(
                              color: Colors.amber.shade600, width: 2)),
                    ),
                  ],
                ),
                Image.asset("assets/cheesetime.jpeg", width: 300, height: 300,),
                Container(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Consumer<cart>(
                      builder: (context, cart, _) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Cheesetime Mango Milkcheese (10000) x " +
                                cart.quantity.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            (10000 * cart.quantity).toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  height: 30,
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border:
                          Border.all(color: Colors.amber.shade700, width: 2)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
