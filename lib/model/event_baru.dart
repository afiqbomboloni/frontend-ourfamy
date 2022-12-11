// To parse this JSON data, do
//
//     final event = eventFromJson(jsonString);

import 'dart:convert';
class EventResult {
    int id;
    String namaEvent;
    String tanggal;
    String deskripsi;
    String pembicara;
    String images;
    String link;
    EventResult({
        required this.id,
        required this.namaEvent,
        required this.tanggal,
        required this.deskripsi,
        required this.pembicara,
        required this.images,
        required this.link,
    });



    factory EventResult.fromJson(Map<String, dynamic> json) {
      return EventResult(
        id: json["id"],
        namaEvent: json["nama_event"],
        tanggal: json["tanggal"],
        deskripsi: json["deskripsi"],
        pembicara: json["pembicara"],
        images: json["images"],
        link: json['link'],
      );
    }

  

    // Map<String, dynamic> toJson() => {
    //     "id": id,
    //     "nama_event": namaEvent,
    //     "tanggal": tanggal,
    //     "deskripsi": deskripsi,
    //     "pembicara": pembicara,
    //     "images": images,
    // };
}
