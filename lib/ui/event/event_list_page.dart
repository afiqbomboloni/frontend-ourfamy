import 'package:flutter/material.dart';
import 'package:ourfamy/ui/event/event_detail_page.dart';
import 'package:ourfamy/widgets/footer.dart';
import 'package:ourfamy/service/http_service.dart';
import 'package:ourfamy/model/event_baru.dart';

class EventListPage extends StatefulWidget {
  static const routeName = '/eventListPage';

  const EventListPage({Key? key}) : super(key: key);

  @override
  State<EventListPage> createState() => _EventListPageState();
}

class _EventListPageState extends State<EventListPage> {
  ApiService apiService = ApiService();
  late Future<List<EventResult>> eventResult;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    eventResult = apiService.getEvent();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        toolbarHeight: 125.0, //set your height
        flexibleSpace: SafeArea(
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 15, 0, 10),
            child: Column(
              children: [
                const Text(
                  'Rekomendasi Event Yang Akan Datang',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ), // set an icon or image
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ), // set your search bar setting
              ],
            ),
          ),
        ),
      ),
      body: FutureBuilder<List<EventResult>>(
        future: eventResult,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<EventResult> event = snapshot.data!;
          return ListView.builder(
            itemCount: event.length,
            itemBuilder: (context, index) {
              return GestureDetector(
      onTap: () {
        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EventDetailPage(event[index])),
                      );
      },
      child: Card(
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
        color: const Color.fromRGBO(249, 208, 208, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(event[index].images),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: const Text('Webinar'),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Text(
                      event[index].namaEvent,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(event[index].tanggal),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
            },
          );
          } else if(snapshot.hasError){
            return Text("${snapshot.error}");
          } else{
            return CircularProgressIndicator();
          }
          
        },
      ),
      bottomSheet: const Footer(),
    );
  }
}
