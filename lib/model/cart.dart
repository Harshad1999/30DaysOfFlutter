import 'package:catalog_app/core/store.dart';
import 'package:catalog_app/model/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
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

  // void add(Item item) {
  //   _itemIds.add(item.id);
  // }

  //remove Item

  // void remove(Item item) {
  //   _itemIds.remove(item.id);
  // }
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    // TODO: implement perform
    store.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    // TODO: implement perform
    store.cart._itemIds.remove(item.id);
  }
}
