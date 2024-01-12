import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

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
                        child: Text(
                          '50',
                          style: TextStyle(
                            color: Color(0xff7c74ee),
                          ),
                        ),
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
                          '50',
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
          child: Column(
            children:[
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: PetCard(),
              )
            ]
          ),
        )
      )
    );
  }
}
