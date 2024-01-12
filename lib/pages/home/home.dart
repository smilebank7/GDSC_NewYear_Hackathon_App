import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import '/pages/home/todo_card_mate2.dart';

import 'pet_card.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: MediaQuery.of(context).size * 0.13,
          child: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              children: [
                Icon(
                  CupertinoIcons.heart_circle_fill,
                  color: Color(0xff7c74ee),
                ),
                Text(
                  'LUSTLE',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff7c74ee),
                  ),
                ),
              ],
            ),
            centerTitle: false,
            bottom: PreferredSize(
              preferredSize: MediaQuery.of(context).size * 0.1,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.035,
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Color(0xff7c74ee),
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text('상점 기능은 준비중입니다.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text('예'),
                                        ),
                                      ],
                                      backgroundColor: Colors.white,
                                    );
                                  });
                            },
                            child: Text(
                              '50러슬',
                              style: TextStyle(
                                color: Color(0xff7c74ee),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        '150일',
                        style: TextStyle(
                          color: Color(0xffde89ff),
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.035,
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Color(0xff7c74ee),
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'LV 3 ',
                            style: TextStyle(
                              color: Color(0xff7c74ee),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: PetCard(),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Divider(
                thickness: 3.0,
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text(
                      '완료된 친구\'S TO DO',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffb774ee),
                      ),
                    )
                  ]),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                      child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                              color: Color(0xffb774ee),
                                              width: 2,
                                            ),
                                          ),
                                          child: ListTile(
                                            title: Text(
                                              '할일',
                                              style: TextStyle(
                                                color: Color(0xffb774ee),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            trailing: Icon(
                                              CupertinoIcons.heart_fill,
                                              color: Color(0xffb774ee),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Divider(
                                          thickness: 3,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Expanded(
                                          child: Container(
                                            height: MediaQuery.of(context).size.height * 0.2,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(
                                                color: Color(0xffb774ee),
                                                width: 2,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                  color: Color(0xffb774ee),
                                                  width: 2,
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text('승인'),
                                              ),
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                  color: Color(0xffb774ee),
                                                  width: 2,
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text('거절'),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ));
                                });
                          },
                          child: TodoCardMate2());
                    },
                  ),
                ]))
          ]),
        )));
  }
}
