import 'dart:math';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarApp extends StatefulWidget {
  @override
  _CalendarAppState createState() => _CalendarAppState();
}

class _CalendarAppState extends State<CalendarApp> {
  List<Appointment> _shiftCollection = <Appointment>[];
  final List<CalendarResource> _employeeCollection = <CalendarResource>[];
  late _DataSource _events;

  @override
  void initState() {
    _addResources();
    _addAppointments();
    _events = _DataSource(_shiftCollection, _employeeCollection);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          automaticallyImplyLeading: true,
          backgroundColor: Colors.deepPurple.shade900,
          title: new Text("Schedule a Meeting",
              style: TextStyle(color: Colors.white)),
        ),
        body: SafeArea(
          child: SfCalendar(
            view: CalendarView.timelineWeek,
            allowedViews: const [
              CalendarView.timelineDay,
              CalendarView.timelineWeek,
              CalendarView.timelineWorkWeek,
            ],
            showDatePickerButton: true,
            resourceViewSettings: const ResourceViewSettings(
                displayNameTextStyle: TextStyle(color: Colors.white),
                showAvatar: false,
                size: 120,
                visibleResourceCount: 5),
            dataSource: _events,
          ),
        ),
      ),
    );
  }

  void _addResources() {
    Random random = Random();
    List<String> nameCollection = <String>[];
    nameCollection.add('Dr Tony');
    nameCollection.add('Richard');
    nameCollection.add('Robert');
    nameCollection.add('Dr Natasha');
    nameCollection.add('Tia');
    nameCollection.add('Theresa');
    nameCollection.add('Edith');
    nameCollection.add('Brooklyn');
    nameCollection.add('Dr Stephen');
    nameCollection.add('Sophia');
    nameCollection.add('Elena');
    nameCollection.add('Stephen');
    nameCollection.add('Dr Tim');
    nameCollection.add('Daniel');
    nameCollection.add('Emilia');
    nameCollection.add('Kinsley Elena');
    nameCollection.add('Daniel');
    nameCollection.add('William');
    nameCollection.add('Addison');
    nameCollection.add('Ruby');

    List<Color> resourceColorCollection = <Color>[];
    resourceColorCollection.add(const Color(0xFF7c9473));
    resourceColorCollection.add(const Color(0xFFcfdac8));
    resourceColorCollection.add(const Color(0xFFcdd0cb));
    resourceColorCollection.add(const Color(0xFF9dad7f));

    for (int i = 0; i < nameCollection.length; i++) {
      _employeeCollection.add(CalendarResource(
        displayName: nameCollection[i],
        id: '000$i',
        color: resourceColorCollection[random.nextInt(4)],
      ));
    }
  }

  void _addAppointments() {
    _shiftCollection = <Appointment>[];
    List<String> subjectCollection = <String>[];
    subjectCollection.add('General Consultation');
    subjectCollection.add('Immediate Execution');
    subjectCollection.add('Growth Plan');
    subjectCollection.add('Special Consulting');
    subjectCollection.add('Support');
    subjectCollection.add('OP Meeting');
    subjectCollection.add('Weekly Review');
    subjectCollection.add('Course Completion');
    subjectCollection.add('Regular updates');
    subjectCollection.add('General Check');

    List<Color> colorCollection = <Color>[];
    colorCollection.add(const Color(0xFFbe9fe1));
    colorCollection.add(const Color(0xFFc9b6e4));
    colorCollection.add(const Color(0xFFe1ccec));
    colorCollection.add(const Color(0xFFf1f1f6));

    final Random random = Random();
    for (int i = 0; i < _employeeCollection.length; i++) {
      final List<String> employeeIds = <String>[
        _employeeCollection[i].id.toString()
      ];
      if (i == _employeeCollection.length - 1) {
        int index = random.nextInt(5);
        index = index == i ? index + 1 : index;
        employeeIds.add(_employeeCollection[index].id.toString());
      }

      for (int k = 0; k < 365; k++) {
        if (employeeIds.length > 1 && k % 2 == 0) {
          continue;
        }
        for (int j = 0; j < 2; j++) {
          final DateTime date = DateTime.now().add(Duration(days: k + j));
          int startHour = 9 + random.nextInt(6);
          startHour =
              startHour >= 13 && startHour <= 14 ? startHour + 1 : startHour;
          final DateTime shiftStartTime =
              DateTime(date.year, date.month, date.day, startHour, 0, 0);
          _shiftCollection.add(Appointment(
              startTime: shiftStartTime,
              endTime: shiftStartTime.add(const Duration(hours: 1)),
              subject: subjectCollection[random.nextInt(8)],
              color: colorCollection[random.nextInt(4)],
              resourceIds: employeeIds));
        }
      }
    }
  }
}

class _DataSource extends CalendarDataSource {
  _DataSource(List<Appointment> source, List<CalendarResource> resourceColl) {
    appointments = source;
    resources = resourceColl;
  }
}
