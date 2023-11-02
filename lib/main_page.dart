import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  static Future<void> callback() async {
    print('hbhb');
    print('AlarmManger Callback');
  }

  void runAlarm() async{
    await AndroidAlarmManager.oneShot(Duration(seconds: 1), 0, callback);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key : _key,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.amberAccent,
        // title: Text('LottoApp'),
        // centerTitle: true,
        leading: IconButton(onPressed: () { }, icon: Icon(Icons.camera_alt_outlined),
        ),
        actions:  [
          IconButton(
              onPressed:() => _key.currentState!.openDrawer(),
              icon: Icon(Icons.menu))],
      ),
      drawer: Drawer(// 오른쪽은 endDrawer & openEndDrawer
        child:  ListView(
          children: [
            UserAccountsDrawerHeader(
              // currentAccountPicture: CircleAvatar(
              // ),
              // otherAccountsPictures: [
              //   CircleAvatar(
              //   ),
              // ],
              accountName: Text('기록보기'),
              accountEmail: Text('abc12356@naver.com'),
              onDetailsPressed: () {},
              decoration: BoxDecoration(
                color: Colors.purple[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              iconColor: Colors.purple,
              focusColor: Colors.purple,
              title: Text('당첨 기록'),
              onTap: () {
                runAlarm();
                print('Alarm Start');},
              trailing: Icon(Icons.navigate_next),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.shopping_cart_rounded),
              iconColor: Colors.purple,
              focusColor: Colors.purple,
              title: Text('생성번호 목록'),
              onTap: () {},
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.mark_as_unread_sharp),
              iconColor: Colors.purple,
              focusColor: Colors.purple,
              title: Text('분석'),
              onTap: () {},
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.restore_from_trash),
              iconColor: Colors.purple,
              focusColor: Colors.purple,
              title: Text('휴지통'),
              onTap: () {},
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              iconColor: Colors.purple,
              focusColor: Colors.purple,
              title: Text('개인정보처리방침'),
              onTap: () {},
              trailing: Icon(Icons.navigate_next),
            ),
          ],
        ),
      ),

      body: Container(
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(color: Colors.amberAccent),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('이번주 당첨 번호',style: TextStyle(fontSize: 20),),
            //     1번부터 10번까지는 노란색입니다.
            // 11번 부터 20번까지는 파란색입니다.
            // 21번부터 30번까지는 빨간색입니다.
            // 31번부터 40번까지는 검은색입니다.
            // 41번부터 45번까지는 초록색입니다.
                  Column(
                    children: [
                      Text('오늘 날짜'),
                      Row(
                        children: [
                          ClipOval(
                            child: Container(
                              width: 50.0, // 원의 지름을 결정하는 너비 설정
                              height: 50.0, // 원의 지름을 결정하는 높이 설정
                              color: Colors.blue, // 배경색 설정
                              child: Center(
                                child: Text(
                                 '1', // 숫자를 표시
                                  style: TextStyle(
                                    color: Colors.white, // 텍스트 색상 설정
                                    fontSize: 24.0, // 텍스트 크기 설정
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ClipOval(
                            child: Container(
                              width: 50.0, // 원의 지름을 결정하는 너비 설정
                              height: 50.0, // 원의 지름을 결정하는 높이 설정
                              color: Colors.blue, // 배경색 설정
                              child: Center(
                                child: Text(
                                  '1', // 숫자를 표시
                                  style: TextStyle(
                                    color: Colors.white, // 텍스트 색상 설정
                                    fontSize: 24.0, // 텍스트 크기 설정
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ClipOval(
                            child: Container(
                              width: 50.0, // 원의 지름을 결정하는 너비 설정
                              height: 50.0, // 원의 지름을 결정하는 높이 설정
                              color: Colors.blue, // 배경색 설정
                              child: Center(
                                child: Text(
                                  '1', // 숫자를 표시
                                  style: TextStyle(
                                    color: Colors.white, // 텍스트 색상 설정
                                    fontSize: 24.0, // 텍스트 크기 설정
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ClipOval(
                            child: Container(
                              width: 50.0, // 원의 지름을 결정하는 너비 설정
                              height: 50.0, // 원의 지름을 결정하는 높이 설정
                              color: Colors.blue, // 배경색 설정
                              child: Center(
                                child: Text(
                                  '1', // 숫자를 표시
                                  style: TextStyle(
                                    color: Colors.white, // 텍스트 색상 설정
                                    fontSize: 24.0, // 텍스트 크기 설정
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ClipOval(
                            child: Container(
                              width: 50.0, // 원의 지름을 결정하는 너비 설정
                              height: 50.0, // 원의 지름을 결정하는 높이 설정
                              color: Colors.blue, // 배경색 설정
                              child: Center(
                                child: Text(
                                  '1', // 숫자를 표시
                                  style: TextStyle(
                                    color: Colors.white, // 텍스트 색상 설정
                                    fontSize: 24.0, // 텍스트 크기 설정
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ClipOval(
                            child: Container(
                              width: 50.0, // 원의 지름을 결정하는 너비 설정
                              height: 50.0, // 원의 지름을 결정하는 높이 설정
                              color: Colors.blue, // 배경색 설정
                              child: Center(
                                child: Text(
                                  '1', // 숫자를 표시
                                  style: TextStyle(
                                    color: Colors.white, // 텍스트 색상 설정
                                    fontSize: 24.0, // 텍스트 크기 설정
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ClipOval(
                            child: Container(
                              width: 50.0, // 원의 지름을 결정하는 너비 설정
                              height: 50.0, // 원의 지름을 결정하는 높이 설정
                              color: Colors.blue, // 배경색 설정
                              child: Center(
                                child: Text(
                                  '+', // 숫자를 표시
                                  style: TextStyle(
                                    color: Colors.white, // 텍스트 색상 설정
                                    fontSize: 24.0, // 텍스트 크기 설정
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ClipOval(
                            child: Container(
                              width: 50.0, // 원의 지름을 결정하는 너비 설정
                              height: 50.0, // 원의 지름을 결정하는 높이 설정
                              color: Colors.blue, // 배경색 설정
                              child: Center(
                                child: Text(
                                  '1', // 숫자를 표시
                                  style: TextStyle(
                                    color: Colors.white, // 텍스트 색상 설정
                                    fontSize: 24.0, // 텍스트 크기 설정
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                    //
                  ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: (){},
                          child: Row(
                            children: [
                              Icon(Icons.sd_storage_outlined),
                              Text('번호 직접 입력')
                            ],
                          )),
                      ElevatedButton(onPressed: (){},
                          child: Row(
                            children: [
                              Icon(Icons.camera_alt_outlined),
                              Text('QR코드 스캔')
                            ],
                          ))
                    ],
                  )

                ],
              ),
            ) ,
            //  Container(
            //   width: 300,
            //   height: 200,
            //   decoration: BoxDecoration(color:Colors.blue,borderRadius: BorderRadius.circular(20)),
            //   child: Column(
            //     children: [Text('')],
            //   ),
            // ),
            SizedBox(
              width: 200,
              height: 50,
            ),
            // MBTI , 직접보기

            Container(
            width: double.infinity,
            height: 100,
            color: Colors.black12,
              child: ListView.builder(
                  itemBuilder: (BuildContext context, int index){
              return Text('data');
            },
            ),
            )
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(items: [
      //
      // ],) ,
    );
  }
}
