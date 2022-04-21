import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBookPetWidget extends StatelessWidget {
  const MyBookPetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.4,
      color: Colors.black87,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '          지금 이쪽을 읽고 있는 중이에요.\n직접 입력하거나 버튼을 이용해 조절해 주세요.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.expand_more,
                color: Colors.white70,
                size: 60,
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: 130,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: '24',
                      style: TextStyle(
                        fontSize: 38,
                      ),
                      children: [
                        TextSpan(
                          text: '  p',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    )
                  ])),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    ' / 150p',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.expand_less,
                color: Colors.white70,
                size: 60,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),

      // Column(
      //   children: [
      //     SizedBox(
      //       height: 10,
      //     ),
      //     Container(
      //       width: 120,
      //       height: 70,
      //       decoration: BoxDecoration(
      //         color: Colors.white,
      //         borderRadius: BorderRadius.all(Radius.circular(10)),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 10,
      //     ),
      //     Container(
      //       width: 120,
      //       height: 70,
      //       decoration: BoxDecoration(
      //         color: Colors.white,
      //         borderRadius: BorderRadius.all(Radius.circular(10)),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 10,
      //     ),
      //     Container(
      //       width: 120,
      //       height: 70,
      //       decoration: BoxDecoration(
      //         color: Colors.white,
      //         borderRadius: BorderRadius.all(Radius.circular(10)),
      //       ),
      //     ),
      //   ],
      // )
    );
  }
}
