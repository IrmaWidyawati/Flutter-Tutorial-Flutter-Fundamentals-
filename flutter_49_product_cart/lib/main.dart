import 'package:flutter/material.dart';
import 'package:flutter_49_product_cart/product_cart.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Cheesetime Product Cart"),
            backgroundColor: secondColor,
          ),
          body: ChangeNotifierProvider<ProductState>(
            create: (context) =>ProductState(),
            child: Container(
              margin: EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.topCenter,
                child: Consumer<ProductState>(
                  builder: (context, productState, _) => productCart(
                    imageURL:
                        "https://pbs.twimg.com/profile_images/1438018611923218433/INCqGrMg_400x400.jpg",
                    name: "Strawberry Milkcheese",
                    price: "Rp 10.000",
                    quantity:productState.quantity,
                    notification: ((productState.quantity > 5) ? "Diskon 10%" : null).toString(),
                    onAddCartTap: (){}, 
                    onIncTap: (){
                      productState.quantity++;
                    },
                    onDecTap: (){
                      productState.quantity--;
                    },
                  ),
                ),
              ),
            ),
          )),
    );
  }
}



class ProductState with ChangeNotifier{
  int _quantity =0;

  int get quantity => _quantity;
  set quantity(int newValue){
    _quantity = newValue;
    notifyListeners();
  }
  

}