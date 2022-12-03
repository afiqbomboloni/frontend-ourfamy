import 'package:flutter/material.dart';
import 'package:ourfamy/model/event.dart';
import 'package:ourfamy/ui/event/event_detail_page.dart';
import 'package:ourfamy/widget/footer.dart';

class EventListPage extends StatelessWidget {
  static const routeName = '/eventListPage';

  const EventListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 125.0, //set your height
        flexibleSpace: SafeArea(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 15, 0, 10),
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
      body: FutureBuilder<String>(
        future: DefaultAssetBundle.of(context).loadString('assets/events.json'),
        builder: (context, snapshot) {
          final List<Event> event = parseEvents(snapshot.data);
          return ListView.builder(
            itemCount: event.length,
            itemBuilder: (context, index) {
              return _buildEventItem(context, event[index]);
            },
          );
        },
      ),
      bottomSheet: Footer(),
    );
  }

  Widget _buildEventItem(BuildContext context, Event event) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EventDetailPage.routeName,
            arguments: event);
      },
      child: Card(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
        color: Color.fromRGBO(249, 208, 208, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(event.image),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text('Webinar'),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Text(
                      event.nama_event,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(event.tanggal),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
