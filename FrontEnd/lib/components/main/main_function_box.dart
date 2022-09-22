import 'package:flutter/material.dart';

class function_box extends StatelessWidget {
  const function_box(
      {Key? key,
        required this.title,
        required this.box_color,
        required this.paddings})
      : super(key: key);
  final title;
  final box_color;
  final paddings;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddings,
      child: Container(
        child: Column(
          children: [
            Flexible(
              child: Container(
                width: 480,
                height: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: box_color,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Text(
                              "${title}",
                              style: TextStyle(
                                fontSize: 70,
                                color: Color(0xFF483434),
                                fontFamily: "Daehan",
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Text(
                              "설명",
                              style: TextStyle(
                                color: Color(0xFF483434),
                                fontFamily: "Daehan",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              flex: 1,
            ),
          ],
        ),
      ),
    );
    ;
    ;
  }
}