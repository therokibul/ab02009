import 'package:ab02009/models/product_model.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    if (cartList.isEmpty) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shopping_cart_outlined),
              Text('Your Cart is Empty'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Shop Now'),
              )
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  // setState(() {
                  //   cartList.add(cartList[index]);

                  // });
                },
                leading: Text('${cartList[index].counter}'),
                title: Text(cartList[index].name),
                trailing: Text(
                    '\$${cartList[index].price * cartList[index].counter}'),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: cartList.length),
      );
    }
  }
}
