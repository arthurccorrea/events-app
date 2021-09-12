
import 'package:events_app/classes/event/event.dart';
import 'package:events_app/classes/item/item.dart';
import 'package:events_app/classes/item/item_category.dart';
import 'package:events_app/classes/people/people.dart';
import 'package:events_app/pages/home/event_cart.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class EventList extends StatefulWidget {
  EventList({Key? key}) : super(key: key);

  @override
  _EventListState createState() => _EventListState();
}

class _EventListState extends State<EventList> {

  List<Event> events = [];


  @override
  void initState() {
    events = createEventList(10);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: events.length,
      itemBuilder: (context, i) => EventCard(event: events[i]));
  }

    List<Event> createEventList(int numberOfEvents) {
    List<Event> events = [];
    for (int i = 0; i <= numberOfEvents ; i++) {
      Event event = Event.full(i, "Test event $i", "Full description of test event $i", DateTime.now(), DateTime.now(), createPeopleList(i), createItemList(i));
      events.add(event);
    }

    return events;
  }

  List<People> createPeopleList(int eventId) {
    List<People> people = [];
    for (int i = 0 ; i <= 5 ; i++) {
      People p = People.full(i, eventId, "Test person $i", "testeperson$i@testmail.com", 99999999999, []);
      people.add(p);
    }
    return people;
  }

  List<Item> createItemList(int eventId) {
    List<Item> items = [];
    for (int i = 0 ; i <= 5 ; i++) {
      math.Random random = math.Random();
      double quantity = random.nextInt(15).toDouble();
      double unitaryValue = random.nextInt(100).toDouble() + random.nextDouble();
      List<ItemCategory> categories = ItemCategory.values;
      Item item = Item.full(i, eventId, "Test item $i", categories[random.nextInt(categories.length - 1)] ,quantity, unitaryValue, (unitaryValue * quantity));
      items.add(item);
    }
    return items;
  }

}