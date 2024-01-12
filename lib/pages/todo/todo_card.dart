import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/cupertino.dart';

class TodoCard extends ConsumerStatefulWidget {
  const TodoCard({super.key});

  @override
  ConsumerState createState() => _TodoCardState();
}

class _TodoCardState extends ConsumerState<TodoCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Color(0xff7c74ee),
            width: 2,
          ),
        ),
        child: ListTile(
          leading: Icon(
            CupertinoIcons.checkmark_alt_circle_fill,
            color: Color(0xff7c74ee),
          ),
          title: Text(
            '할일',
            style: TextStyle(
              color: Color(0xff7c74ee),
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(
            CupertinoIcons.heart_fill,
            color: Color(0xff7c74ee),
          ),
        ),
      ),
    );
  }
}
