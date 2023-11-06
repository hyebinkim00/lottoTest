
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,                          mainAxisSize: MainAxisSize.min, // 최소한의 크기로 유지
                         children: [
                           ClipOval(
                           child: Container(
                             color: Colors.blue,
                             width: 100, // Adjust the width and height as needed
                             height: 100,
                             child: Center(
                               child: Text('1'),
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
              //

              Column(
                children: [
                  Text('번호추천'),
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                    shrinkWrap: true, // You won't see infinite size error
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                      itemBuilder: (BuildContext context, int idex){
                    return myMenu();
                      },
                  itemCount: 6,),
                ],
              )


            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(items: [
      //
      // ],) ,
    );
  }

  Widget myMenu() {
    return Container(
      // width: 100.0, // 네모박스의 가로 크기
      // height: 100.0, // 네모박스의 세로 크기
      color: Colors.blue, // 배경색
      margin: EdgeInsets.all(8.0), // 네모박스 간의 간격 설정
    );
  }
}
