import 'package:catalog_app/model/catalog.dart';

class _CartModel {
  //Catalog Fields
  CatalogModel _catalog;

  //Collection of Ids - Store Ids of each item
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //Get Items in the cart

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //add Item

  void add(Item item) {
    _itemIds.add(item.id);
  }

  //remove Item

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
