import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'todo_card.dart';
import 'todo_card_mate.dart';
import 'package:go_router/go_router.dart';
class Todo extends ConsumerWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: MediaQuery.of(context).size * 0.05,
          child: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              children: [
                Icon(
                  CupertinoIcons.heart_circle_fill,
                  color: Color(0xff7c74ee),
                ),
                Text(
                  'TO DO',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff7c74ee),
                  ),
                ),
              ],
            ),
            centerTitle: false,
            actions: [
              IconButton(
                icon: Icon(
                  CupertinoIcons.plus_circle,
                  color: Color(0xff7c74ee),
                  size: 35 ,
                ),
                onPressed: () {
                  context.go('/todo/add');
                },
              ),],
          ),
        ),
        body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index){
                      return TodoCard();
                    },
                  )
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                          Text(
                            '친구의 TO DO',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffb774ee),
                            ),
                          )
                        ]
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: 4,
                        itemBuilder: (context, index){
                          return TodoCardMate();
                        },
                      ),
                    ]
                  )
                )
              ],
            )
        )
    );
  }
}


