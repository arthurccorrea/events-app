import 'package:events_app/classes/event/event.dart';
import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  final Event? event;
  const EventPage({Key? key, this.event}) : super(key: key);

  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  Event? event;

  @override
  void initState() {
    if (widget.event == null) {
      event = Event();
    } else {
      event = widget.event;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [],
      ),
    );
  }
}
