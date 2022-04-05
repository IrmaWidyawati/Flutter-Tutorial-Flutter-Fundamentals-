
import 'package:flutter_52_listview_builder/product_cart.dart';
import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<ProductBloc>(
          create: (context) => ProductBloc(), child: MainPage()),
    );
  }
}

class MainPage extends StatelessWidget {
  Random r = Random();
  @override
  Widget build(BuildContext context) {
    ProductBloc bloc = BlocProvider.of<ProductBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Builder'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                  onPressed: () {
                    // add random number to bloc
                    bloc.add(r.nextInt(5));
                  },
                  child: Text('Random')),
              SizedBox(height: 20),
              BlocBuilder<ProductBloc, List<Product>>(
                builder: (context, products) => Expanded(
                  child: Center(
                    child: ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return productCart(
                          imageURL: products[index].imageURL,
                          name: products[index].name,
                          price: products[index].price.toString(),
                          onAddCartTap: () {},
                          onIncTap: () {},
                          onDecTap: () {}, 
                        );
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Product {
  String imageURL;
  String name;
  int price;

  Product({this.imageURL = "", this.name = "", this.price = 0});
}

class ProductBloc extends Bloc<int, List<Product>> {
  ProductBloc() : super([]);

  @override
  Stream<List<Product>> mapEventToState(int event) async* {
    List<Product> products = [];
    for (int i = 0; i < event; i++) {
      products.add(Product(
          imageURL: "https://pbs.twimg.com/profile_images/1438018611923218433/INCqGrMg_400x400.jpg",
          name: "Product ${i}",
          price: (i + 1) * 5000));
    }
    yield products;
  }
}