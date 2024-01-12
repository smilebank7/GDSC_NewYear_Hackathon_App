import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Add extends ConsumerWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: MediaQuery
            .of(context)
            .size * 0.13,
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
            preferredSize: MediaQuery
                .of(context)
                .size * 0.1,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                Icon(
                  Icons.people,
                  size: 100,
                  color: Colors.black,
                ),
                SizedBox(height: 20),
                Text(
                  "링크로 공유하기",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color(0xff7c74ee),
                          width: 2,
                        ),
                      ),
                      child: Text(
                        "https://link",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    IconButton(
                      icon: Icon(Icons.share, color: Color(0xff7c74ee)),
                      onPressed: () {
                        // Add your sharing logic here
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}