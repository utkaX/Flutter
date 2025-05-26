import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/pages/item_widget.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {


    int days = 30;
    String name = "Utsav";

    return Scaffold(
      appBar: AppBar(
        title:Center(
          child: Text("Catalog App"),
           ),
      ),
       
      body: ListView.builder(
        itemCount: CatalogModel.items.length, 
        itemBuilder: (BuildContext context, int index) { 
          return ItemWidget(item: CatalogModel.items[index]);
         },
      ),
      drawer: MyDrawer(),
    );
  }
}
