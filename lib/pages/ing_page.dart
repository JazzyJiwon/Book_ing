import 'dart:async';

import 'package:book_ing/pages/Memopage.dart';
import 'package:book_ing/widgets/TimeCheck.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/MybookPet.dart';
import 'ReadPage.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   actions: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Icon(
        //         Icons.settings,
        //       ),
        //     ),
        //   ],
        // ),
        body: Column(
          children: [
            Row(
              children: [
                MyBookPetWidget(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            IndexedStack(
              index: currentIndex,
              children: [
                ReadPage(),
                MemoPage(),
                MemoPage(),
                MemoPage(),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex, // 현재 보여주는 탭
          onTap: (newIndex) {
            print("selected newIndex : $newIndex");
            // 다른 페이지로 이동
            setState(() {
              currentIndex = newIndex;
            });
          },
          selectedItemColor: Colors.blue[100], // 선택된 아이콘 색상
          unselectedItemColor: Colors.grey, // 선택되지 않은 아이콘 색상
          showSelectedLabels: false, // 선택된 항목 label 숨기기
          showUnselectedLabels: false, // 선택되지 않은 항목 label 숨기기
          type: BottomNavigationBarType.fixed, // 선택시 아이콘 움직이지 않기
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.redeem), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ],
        ),
      ),
    );
  }
}
