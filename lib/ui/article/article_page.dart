import 'package:flutter/material.dart';
import 'package:ourfamy/service/http_service.dart';
import 'package:ourfamy/model/article.dart';
import 'package:ourfamy/widgets/placeholder_custom.dart';

class ArticleListPage extends StatefulWidget {
  static const routeName = '/articleListPage';
  const ArticleListPage({super.key});

  @override
  State<ArticleListPage> createState() => _ArticleListPageState();
}

class _ArticleListPageState extends State<ArticleListPage> {
  ApiService apiService = ApiService();
  late Future<List<Article>> article;
    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    article = apiService.getArticle();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        controller: ScrollController(),
        child: 
        Column(
          children: [
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              PlaceHolderCustom(
                placeHolderTetx: 'Search Now',
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 65, top: 10, right: 65),
                    child: Text(
                      'Rekomendasi artikel hari ini',
                      style: Theme.of(context)
                          .textTheme
                          .headline2
                          ?.copyWith(fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
               Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: FutureBuilder<List<Article>> (
                  future: article,
                  builder: (context, snapshot) {
                    if(snapshot.hasData) {
                      List<Article> isiData = snapshot.data!;
                      return ListView.builder(
                        physics: ClampingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: isiData.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              
                            },
                            child: SingleChildScrollView(
                              child: Column(
                                children: <Widget>[
                                  Card(
                              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 294,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.85, -0.9),
                        child: Text(
                          isiData[index].penulis,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.9, -0.9),
                        child: Container(
                          width: 64,
                          height: 17,
                          decoration: BoxDecoration(
                            color: Color(0xFFD12269),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            isiData[index].kategori,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                ?.copyWith(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Align(
                        alignment: AlignmentDirectional(0.02, -0.6),
                        child: Text(
                          isiData[index].judul,
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.03, 0.08),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              isiData[index].image,
                              width: 268,
                              height: 152.55,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                            )
                                ],
                              ),
                            )
                            
                            
                          );
                          
                          
                        },
                      );
                    } else if(snapshot.hasError) {
                      return Text("${snapshot.error}");
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                ),
                
              ),
              
              
              // Expanded(
              //   child: Padding(
              //     padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              //     child: Container(
              //       width: 414,
              //       height: 294,
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         boxShadow: [
              //           BoxShadow(
              //             blurRadius: 4,
              //             color: Color(0x33000000),
              //             offset: Offset(0, 2),
              //           )
              //         ],
              //       ),
              //       child: Stack(
              //         children: [
              //           Align(
              //             alignment: AlignmentDirectional(-0.85, -0.9),
              //             child: Text(
              //               'Linda Agustin',
              //               style: Theme.of(context)
              //                   .textTheme
              //                   .bodyText2
              //                   ?.copyWith(
              //                       fontSize: 15,
              //                       color: Colors.black,
              //                       fontWeight: FontWeight.bold),
              //             ),
              //           ),
              //           Align(
              //             alignment: AlignmentDirectional(0.94, -0.88),
              //             child: Container(
              //               width: 64,
              //               height: 17,
              //               decoration: BoxDecoration(
              //                 color: Color(0xFFD12269),
              //                 borderRadius: BorderRadius.circular(5),
              //               ),
              //               child: Text(
              //                 'Parenting',
              //                 textAlign: TextAlign.center,
              //                 style: Theme.of(context)
              //                     .textTheme
              //                     .bodyText1
              //                     ?.copyWith(fontSize: 12, color: Colors.white),
              //               ),
              //             ),
              //           ),
              //           Align(
              //             alignment: AlignmentDirectional(-0.02, -0.66),
              //             child: Text(
              //               'Cegah Stunting Pada Anak, Yuk!',
              //               textAlign: TextAlign.center,
              //               style:
              //                   Theme.of(context).textTheme.bodyText1?.copyWith(
              //                         fontFamily: 'Poppins',
              //                         fontSize: 20,
              //                       ),
              //             ),
              //           ),
              //           Align(
              //             alignment: AlignmentDirectional(0, 0),
              //             child: Padding(
              //               padding:
              //                   EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              //               child: ClipRRect(
              //                 borderRadius: BorderRadius.circular(15),
              //                 child: Image.network(
              //                   'https://picsum.photos/seed/810/600',
              //                   width: 268,
              //                   height: 152.55,
              //                   fit: BoxFit.cover,
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        
          ],
        )
        
      ),
    );
  }
}
