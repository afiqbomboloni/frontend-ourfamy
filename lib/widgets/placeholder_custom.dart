import 'package:flutter/material.dart';

import 'package:ourfamy/widgets/page_coba.dart';

class PlaceHolderCustom extends StatelessWidget {
  final String placeHolderTetx;
  const PlaceHolderCustom({super.key, required this.placeHolderTetx});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              icon: Container(
                padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                decoration: BoxDecoration(
                  color: Colors.amber.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CobaPages(),
              ),
            );
          },
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 35, top: 15, right: 35),
                child: Row(
                  children: [
                    Icon(
                      Icons.search_rounded,
                      color: Colors.black,
                      size: 24,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x33000000),
                            offset: Offset(0, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
