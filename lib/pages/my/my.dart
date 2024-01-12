import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class My extends ConsumerWidget {
  const My({super.key});

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage(
                      'assets/profile_image1.jpg'), // 첫 번째 프로필 이미지 경로
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.favorite,
                  color: Colors.deepPurple, // 하트 이모지 색상
                  size: 40, // 하트 이모지 크기
                ),
                SizedBox(width: 20),
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(
                      'assets/profile_image2.jpg'), // 두 번째 프로필 이미지 경로
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              '사용자 이름',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height * 0.25,
                  height: MediaQuery.of(context).size.height * 0.055,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xff7c74ee),
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '프로필 수정',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: (){
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.height * 0.25,
                    height: MediaQuery.of(context).size.height * 0.055,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color(0xff7c74ee),
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '커플 초대',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 200),
            Container(
              child: Center(
                child: Text(
                  '로그아웃',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileInfo(String label, String value) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$label: ',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
