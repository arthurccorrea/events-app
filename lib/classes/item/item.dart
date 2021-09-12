import 'package:events_app/classes/item/item_category.dart';

class Item {
  int itemId = 0;
  int eventId = 0;
  String description = "";
  ItemCategory? itemCategory;
  double quantity = 0;
  double unitaryValue = 0;
  double totalValue = 0;

  Item();

  Item.full(this.itemId, this.eventId, this.description, this.itemCategory, this.quantity, this.unitaryValue, this.totalValue);
}