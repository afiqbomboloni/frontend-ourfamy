import 'package:flutter/material.dart';

class CobaPages extends StatelessWidget {
  const CobaPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: Text('CobaPages'));
  }
}



// child: Column(
//         children: <Widget>[
//           Row(
//             children: <Widget>[
//               Padding(
//                 padding: EdgeInsets.only(left: 10.0, top: 35.0),
//               ),
//               Icon(
//                 Icons.arrow_back_ios,
//                 color: Colors.black,
//                 size: 24,
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Container(
//                 padding: EdgeInsets.only(left: 36, top: 15, right: 20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Icon(
//                       Icons.search_rounded,
//                       color: Colors.black,
//                       size: 24,
//                     ),
//                     Container(
//                       width: MediaQuery.of(context).size.width * 0.7,
//                       height: 35,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(
//                             blurRadius: 4,
//                             color: Color(0x33000000),
//                             offset: Offset(0, 2),
//                           ),
//                         ],
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           // Padding(
//           //   padding: EdgeInsets.only(top: 20),
//           //   child: Text(
//           //     'Rekomendasi artikel hari ini',
//           //     style:
//           //         Theme.of(context).textTheme.headline2?.copyWith(fontSize: 20),
//           //   ),
//           // ),
//         ],
//       ),






// import '../flutter_flow/flutter_flow_theme.dart';
// import '../flutter_flow/flutter_flow_util.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:google_fonts/google_fonts.dart';

// class ArticlePagesWidget extends StatefulWidget {
//   const ArticlePagesWidget({Key? key}) : super(key: key);

//   @override
//   _ArticlePagesWidgetState createState() => _ArticlePagesWidgetState();
// }

// class _ArticlePagesWidgetState extends State<ArticlePagesWidget> {
//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   void initState() {
//     super.initState();
//     // On page load action.
//     SchedulerBinding.instance.addPostFrameCallback((_) async {
//       context.pushNamed('HomePage');
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
//       body: SafeArea(
//         child: GestureDetector(
//           onTap: () => FocusScope.of(context).unfocus(),
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisSize: MainAxisSize.max,
//                 children: [
//                   Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
//                     child: Icon(
//                       Icons.arrow_back_ios_outlined,
//                       color: Colors.black,
//                       size: 24,
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//                 mainAxisSize: MainAxisSize.max,
//                 children: [
//                   Row(
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       Column(
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Padding(
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(20, 30, 10, 0),
//                             child: Icon(
//                               Icons.search_rounded,
//                               color: Colors.black,
//                               size: 24,
//                             ),
//                           ),
//                         ],
//                       ),
//                       Column(
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Padding(
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(10, 30, 10, 0),
//                             child: Container(
//                               width: MediaQuery.of(context).size.width * 0.7,
//                               height: 30,
//                               decoration: BoxDecoration(
//                                 color: FlutterFlowTheme.of(context)
//                                     .secondaryBackground,
//                                 boxShadow: [
//                                   BoxShadow(
//                                     blurRadius: 4,
//                                     color: Color(0x33000000),
//                                     offset: Offset(0, 2),
//                                   )
//                                 ],
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
//                 child: Text(
//                   'Rekomendasi artikel hari ini',
//                   style: FlutterFlowTheme.of(context).bodyText1.override(
//                         fontFamily: 'Poppins',
//                         fontSize: 20,
//                       ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
//                 child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: 294,
//                   decoration: BoxDecoration(
//                     color: FlutterFlowTheme.of(context).secondaryBackground,
//                     boxShadow: [
//                       BoxShadow(
//                         blurRadius: 4,
//                         color: Color(0x33000000),
//                         offset: Offset(0, 2),
//                       )
//                     ],
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Stack(
//                     children: [
//                       Align(
//                         alignment: AlignmentDirectional(-0.85, -0.9),
//                         child: Text(
//                           'Mahmud Sulistiyo',
//                           style: FlutterFlowTheme.of(context).bodyText1,
//                         ),
//                       ),
//                       Align(
//                         alignment: AlignmentDirectional(0.9, -0.9),
//                         child: Container(
//                           width: 64,
//                           height: 17,
//                           decoration: BoxDecoration(
//                             color: Color(0xFFD12269),
//                             borderRadius: BorderRadius.circular(5),
//                           ),
//                           child: Text(
//                             'Kesehatan',
//                             textAlign: TextAlign.center,
//                             style:
//                                 FlutterFlowTheme.of(context).bodyText1.override(
//                                       fontFamily: 'Poppins',
//                                       color: Colors.white,
//                                       fontSize: 10,
//                                     ),
//                           ),
//                         ),
//                       ),
//                       Align(
//                         alignment: AlignmentDirectional(0.02, -0.6),
//                         child: Text(
//                           '5 Tips Aman Pada Musim Hujan',
//                           style:
//                               FlutterFlowTheme.of(context).bodyText1.override(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 20,
//                                   ),
//                         ),
//                       ),
//                       Align(
//                         alignment: AlignmentDirectional(-0.03, 0.08),
//                         child: Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(15),
//                             child: Image.network(
//                               'https://picsum.photos/seed/910/600',
//                               width: 268,
//                               height: 152.55,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
//                 child: Container(
//                   width: 414,
//                   height: 294,
//                   decoration: BoxDecoration(
//                     color: FlutterFlowTheme.of(context).secondaryBackground,
//                     boxShadow: [
//                       BoxShadow(
//                         blurRadius: 4,
//                         color: Color(0x33000000),
//                         offset: Offset(0, 2),
//                       )
//                     ],
//                   ),
//                   child: Stack(
//                     children: [
//                       Align(
//                         alignment: AlignmentDirectional(-0.85, -0.9),
//                         child: Text(
//                           'Linda Agustin',
//                           style: FlutterFlowTheme.of(context).bodyText1,
//                         ),
//                       ),
//                       Align(
//                         alignment: AlignmentDirectional(0.94, -0.88),
//                         child: Container(
//                           width: 64,
//                           height: 17,
//                           decoration: BoxDecoration(
//                             color: Color(0xFFD12269),
//                             borderRadius: BorderRadius.circular(5),
//                           ),
//                           child: Text(
//                             'Parenting',
//                             textAlign: TextAlign.center,
//                             style:
//                                 FlutterFlowTheme.of(context).bodyText1.override(
//                                       fontFamily: 'Poppins',
//                                       color: Colors.white,
//                                       fontSize: 10,
//                                     ),
//                           ),
//                         ),
//                       ),
//                       Align(
//                         alignment: AlignmentDirectional(-0.02, -0.66),
//                         child: Text(
//                           'Cegah Stunting Pada Anak, Yuk!',
//                           textAlign: TextAlign.center,
//                           style:
//                               FlutterFlowTheme.of(context).bodyText1.override(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                         ),
//                       ),
//                       Align(
//                         alignment: AlignmentDirectional(0, 0),
//                         child: Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(15),
//                             child: Image.network(
//                               'https://picsum.photos/seed/810/600',
//                               width: 268,
//                               height: 152.55,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
