import 'package:events_app/classes/item/item.dart';

class People {
  int peopleId = 0;
  int eventId = 0;
  String name = "";
  String? email;
  int? phone;
  List<Item> abscentItens = [];

  People();

  People.full(this.peopleId, this.eventId, this.name, this.email, this.phone, this.abscentItens);
}