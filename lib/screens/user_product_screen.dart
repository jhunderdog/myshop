import 'package:flutter/material.dart';
import 'package:myshop/widgets/app_drawer.dart';
import 'package:myshop/widgets/user_product_item.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';

class UserProductScreen extends StatelessWidget {
  static const routeName = '/user-products';
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your Products'),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            )
          ],
        ),
        drawer: AppDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: ListView.builder(
              itemCount: productsData.items.length,
              itemBuilder: (_, i) => Column(
                    children: [
                      UserProductItem(
                        productsData.items[i].title,
                        productsData.items[i].imageUrl,
                      ),
                      Divider()
                    ],
                  )),
        ));
  }
}
