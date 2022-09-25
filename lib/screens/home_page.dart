import 'package:catalog_app/models/catalog_model.dart';
import 'package:catalog_app/widgets/drawer_widget.dart';
import 'package:catalog_app/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Catalog App"),
          centerTitle: true,
        ),
        drawer: const MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView.builder(
            itemCount: CatalogModel.products.length,
            itemBuilder: (context, index){
              return CatalogItemWidget(item: CatalogModel.products[index],);
            } ,

          ),
        ));
  }
}
