import 'package:events_app/classes/item/item.dart';
import 'package:events_app/classes/item/item_category.dart';
import 'package:events_app/classes/people/people.dart';

class Event {
  int eventId = 0;
  String name = "";
  String description = "";
  DateTime initialDate = DateTime.now();
  DateTime finalDate = DateTime.now();
  List<People> people = [];
  List<Item> items = [];

  Event();

  Event.full(this.eventId, this.name, this.description, this.initialDate, this.finalDate, this.people, this.items);
}