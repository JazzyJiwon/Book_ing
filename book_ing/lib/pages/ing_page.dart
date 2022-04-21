import 'dart:async';

import 'package:book_ing/book_service.dart';
import 'package:book_ing/pages/Memopage.dart';
import 'package:book_ing/pages/chat_page.dart';
import 'package:book_ing/widgets/TimeCheck.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/MybookPet.dart';
import 'ReadPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Consumer<BookService>(
      builder: (context, bookService, child) {
        return Scaffold(
          // appBar: AppBar(
          //   centerTitle: true,
          //   title: Text(
          //     '독서',
          //     style: TextStyle(
          //       color: Colors.white,
          //     ),
          //   ),
          //   backgroundColor: Colors.black87,
          //   actions: [
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: IconButton(
          //         icon: Icon(CupertinoIcons.bell),
          //         onPressed: () {},
          //       ),
          //     ),
          //   ],
          // ),
          drawer: Drawer(
            backgroundColor: Colors.black.withAlpha(220),
            child: ListView(
              children: [
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(
                        Icons.article_outlined,
                        color: Colors.white70,
                      ),
                      Text(
                        '   나만의 메모장',
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(
                        Icons.chat_outlined,
                        color: Colors.white70,
                      ),
                      Text(
                        '   커뮤니티',
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(
                        Icons.create_outlined,
                        color: Colors.white70,
                      ),
                      Text(
                        '   글쓰기',
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(
                        Icons.undo_outlined,
                        color: Colors.white70,
                      ),
                      Text(
                        '   광장으로 돌아가기',
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.black87,
                expandedHeight: 200,
                automaticallyImplyLeading: false,
                pinned: false,
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(230),
                  child: MyBookPetWidget(),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        DefaultTabController(
                            length: 2, // length of tabs
                            initialIndex: 0,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Container(
                                    color: Colors.black87,
                                    child: TabBar(
                                      labelColor: Colors.white,
                                      unselectedLabelColor: Colors.black,
                                      tabs: [
                                        Tab(text: '커뮤니티'),
                                        Tab(text: '나만의 메모장'),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 16, left: 16, right: 16),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "내가 쓴 글보기",
                                        hintStyle: TextStyle(
                                            color: Colors.grey.shade600),
                                        prefixIcon: Icon(
                                          Icons.search,
                                          color: Colors.grey.shade600,
                                          size: 20,
                                        ),
                                        filled: true,
                                        fillColor: Colors.grey.shade100,
                                        contentPadding: EdgeInsets.all(8),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide: BorderSide(
                                                color: Colors.grey.shade100)),
                                      ),
                                    ),
                                  ),
                                  ListView.builder(
                                    itemBuilder: (BuildContext, index) {
                                      return ListTile(
                                        leading: CircleAvatar(),
                                        title: Text(
                                          "24 p.g.",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        subtitle: Text("책이 너무 재미있어요",
                                            style:
                                                TextStyle(color: Colors.white)),
                                        trailing: Icon(
                                          CupertinoIcons.hand_thumbsup,
                                          color: Colors.white,
                                        ),
                                      );
                                    },
                                    itemCount: 10,
                                    shrinkWrap: true,
                                    padding: EdgeInsets.all(5),
                                    scrollDirection: Axis.vertical,
                                  ),
                                ])),
                      ]),
                ),
              )
            ],
          ),

          // body: Column(
          //   children: [
          //     MyBookPetWidget(),
          //     SizedBox(
          //       height: 20,
          //     ),

          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: 8.0),
          //       child: Container(
          //         width: 70,
          //         height: 80,
          //         decoration: BoxDecoration(
          //           color: Colors.grey,
          //         ),
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: 8.0),
          //       child: Container(
          //         width: 70,
          //         height: 80,
          //         decoration: BoxDecoration(
          //           color: Colors.grey,
          //         ),
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: 8.0),
          //       child: Container(
          //         width: 70,
          //         height: 80,
          //         decoration: BoxDecoration(
          //           color: Colors.grey,
          //         ),
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: 8.0),
          //       child: Container(
          //         width: 70,
          //         height: 80,
          //         decoration: BoxDecoration(
          //           color: Colors.grey,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),

          // ],
          // ),
        );
      },
    );
  }
}
