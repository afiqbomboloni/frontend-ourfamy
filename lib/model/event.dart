import 'dart:convert';

class Event {
  final num id;
  final String nama_event;
  final String tanggal;
  final String deskripsi;
  final String pembicara;
  final String image;

  Event({
    required this.id,
    required this.nama_event,
    required this.tanggal,
    required this.deskripsi,
    required this.pembicara,
    required this.image,
  });

  factory Event.fromJson(Map<String, dynamic> event) => Event(
        id: event['id'],
        nama_event: event['nama_event'],
        tanggal: event['tanggal'],
        deskripsi: event['deskripsi'],
        pembicara: event['pembicara'],
        image: event['image'],
      );
}

List<Event> parseEvents(String? json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json)['events'];
  return parsed.map((json) => Event.fromJson(json)).toList();
}
