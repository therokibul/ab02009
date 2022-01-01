
import 'package:ab02009/pages/cart.dart';
import 'package:ab02009/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:ab02009/models/product_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'ZeroSun',),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                setState(() {
             var contain = cartList.where((element) => element.name==productList[index].name);
                    if(contain.isEmpty){
                      cartList.add(productList[index]);
                    }else{
                     var cartIndex = cartList.indexWhere((element) => element.name==productList[index].name);
                     cartList[cartIndex].counter= cartList[cartIndex].counter+1;
                     print(cartList[cartIndex].counter);
                    }
                });
              },
              title: Text(productList[index].name),
              trailing: Text('\$${productList[index].price}'),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: productList.length),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
        },
        child: const Icon(Icons.shopping_cart_outlined),
      ),
    );
  }
}
