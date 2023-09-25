import 'dart:convert';
import 'package:dart_5_days/model/catalog_Item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<CatalogItem> catalog = [];

  @override
  void initState() {
    super.initState();
    loadCatalogData();
  }

  Future<void> loadCatalogData() async {
    final String catalogJson =
        await rootBundle.loadString('assets/files/catalog.json');
    final List<dynamic> catalogData = json.decode(catalogJson)["products"];
    final List<CatalogItem> catalogItems = catalogData
        .map((itemData) => CatalogItem(
              id: itemData['id'],
              name: itemData['name'],
              desc: itemData['desc'],
              price: itemData['price'].toDouble(),
              color: itemData['color'],
              image: itemData['image'],
            ))
        .toList();

    setState(() {
      catalog = catalogItems; // Assign the fetched data to catalog
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: catalog == null
          ? Center(child: CircularProgressIndicator())
          : catalog.isEmpty
              ? Center(child: Text('No items to display'))
              : ListView.builder(
                  itemCount: catalog.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = catalog[index];
                    return ListTile(
                      title: Text(item.name),
                      subtitle: Text(item.desc),
                      trailing: Text('\$${item.price.toStringAsFixed(2)}'),
                      leading: Image.network(item.image),
                    );
                  },
                ),
    );
  }
}
