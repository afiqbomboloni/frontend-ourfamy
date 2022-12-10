import 'package:ourfamy/service/http_service.dart';
import 'package:ourfamy/model/event_baru.dart';

class EventRepository {
  final eventService = ApiService(); // Use eventService(); for SQLite

  Future getEvent() => eventService.getEvent();
}