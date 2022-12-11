import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ourfamy/model/event_baru.dart';
import 'package:ourfamy/service/http_service.dart';
import 'package:ourfamy/ui/event/event_list_page.dart';
import 'package:ourfamy/widgets/footer.dart';
import 'package:provider/provider.dart';
import 'package:ourfamy/ui/event/event_detail_page.dart';
import 'package:ourfamy/ui/login/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}): super(key: key);
  static const routeName = '/home-page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiService apiService = ApiService();
  late Future<List<EventResult>> eventResult;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    eventResult = apiService.getEvent();
  }
  // final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 208, 208, 1),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
          child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 340,
            ),
            child: Container(
              color: Color.fromRGBO(237, 238, 241, 1),
              height: 1000,
            ),
          ),
          SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 40, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 50,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Kamu ',
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'sedang mencari ',
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'Event, Artikel, Konsultasi ',
                          style: GoogleFonts.montserrat(
                            color: Colors.red,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'parenting? 👋',
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    textScaleFactor: 0.5,
                  ),
                  
                  
                  const SizedBox(
                    height: 80.0,
                  ),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    controller: ScrollController(),
                    child: Row(
                      children: [
                      
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          height: 150.0,
                          width: 115,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                16.0,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 33,
                                backgroundColor: Color.fromRGBO(249, 208, 208, 1),
                                backgroundImage: NetworkImage(
                                  "https://img.freepik.com/free-vector/designer-girl-concept-illustration_114360-4455.jpg?w=2000",
                                ),
                              ),
                              const Spacer(),
                              Text(
                                "Artikel",
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 16,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          height: 150.0,
                          width: 115,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                16.0,
                              ),
                            ),
                          ),
                          
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                backgroundColor: Color.fromRGBO(249, 208, 208, 1),
                                radius: 33,
                                backgroundImage: NetworkImage(
                                  "https://img.freepik.com/free-vector/illustrated-business-person-meditating_52683-60757.jpg?w=2000",
                                ),
                              ),
                              const Spacer(),
                              Text(
                                "Event",
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 16,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          height: 150.0,
                          width: 115,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                16.0,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 33,
                                backgroundColor: Color.fromRGBO(249, 208, 208, 1),
                                backgroundImage: NetworkImage(
                                  "https://img.freepik.com/free-vector/cooking-concept-illustration_114360-1396.jpg?w=2000",
                                ),
                              ),
                              const Spacer(),
                              Text(
                                "Konsultasi",
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 16,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                   const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "😍 Event Saat Ini",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 20,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                    FutureBuilder<List<EventResult>>(
                      future: eventResult,
                      builder: (context, snapshot) {
                        if(snapshot.hasData) {
                          List<EventResult> isiData = snapshot.data!;
                          return ListView.builder(
                            physics: ClampingScrollPhysics(),
                            scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                            itemCount: isiData.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                        Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) => EventDetailPage(isiData[index])),
                                                      );
                                      },
                                child: Card(
                                child: ListTile(
                              
                                leading: ConstrainedBox(
                                    constraints: BoxConstraints(
                                      minWidth: 49,
                                      minHeight: 49,
                                      maxWidth: 69,
                                      maxHeight: 69,
                                    ),
                                    child: Image.network(isiData[index].images, fit: BoxFit.cover),
                                  ),
                                title: Text(isiData[index].namaEvent,
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 16,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                ),),
                                subtitle: Text(isiData[index].pembicara,
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 10,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.normal,
                                ),),
                              )
                              ),
                              );
                              
                            }
                          );
                        } else if(snapshot.hasError) {
                          return Text("${snapshot.error}");
                        } else {
                          return CircularProgressIndicator();
                        }
                      },
                    ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 60,
                        width: 160,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(64.0),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Back?",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
      bottomSheet: const Footer(),
    );
  }
}



