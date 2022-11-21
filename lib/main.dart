import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget>page=[
    Container(child:page1()),
    Container(child:page2()),
    Container(child:page3()),
    Container(child:page4())
  ];

  int _currentindex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Midterm'),),
        body:page[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.red,
          selectedItemColor: Colors.black,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.access_alarm),
              label: 'Alarm',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          onTap: (index) { setState(() {
            _currentindex=index;
            if (index!=0) {
            }
          });
          },
        ),
      ),
    );
  }
}
class page1 extends StatelessWidget{
  final String s1='我叫野原新之助，今年5歲，家住埼玉縣春日部市，是雙葉幼稚園的兒童。」我家還有32年的房屋貸款哦。'
      '頑皮的小新聰明伶俐，雖然總有讓人哭笑不得的行爲，但是溫柔善良，充滿愛心。喜歡大姐姐和動感超人，喜歡巧克力餅乾，最喜歡的人是娜娜子姐姐，總與媽媽鬥智鬥勇。雖不完美，但很真實。'
      '5歲的外表，成年人的靈魂，總會說出一些語出驚人的話。媽媽野原美伢是全職家庭主婦，爲人粗線條，喜歡買名牌，會做很好吃的料理，喜歡買折扣產品，喜歡睡午覺，喜歡帥哥，喜歡鑽頭拳教訓頑皮的小新，最喜歡商場大特賣。看似不溫柔、不體貼、好吃懶做，但是實則爲人正義、愛護弱小，爲了保護家庭可以隨時變身成超人。'
      '小新還有一個嬰兒妹妹小葵，調皮的小葵總讓小新吃虧，是整個家族最小的孩子，也最受寵，雖然因爲她的原因，害的小新不再獨享家人之愛，但是小新仍然愛護妹妹，隨時做妹妹的守護者。'
      '動漫里還有很多其他人：溫柔漂亮的完美女性娜娜子姐姐，臉黑心熱的幼稚園園長，還有活潑的老師們、調皮的小夥伴們等等。';
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
        child:Column(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: Text("我是誰",
                  style: TextStyle(fontSize:24,
                    fontWeight:FontWeight.bold,)),
            ),
            Container(
              color:Colors.blue,
              child:Image.asset('image/img5.jfif'),
              height: 200,
              width: 200,
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [ BoxShadow(color: Colors.amberAccent,
                    offset: Offset(6, 6)),
                ],),
              child:Text(s1,
                style: TextStyle(fontSize: 20),),
            ),
            Row(
              children: [
                Container(
                  color:Colors.blue,
                  child:Image.asset('image/img3.jfif'),
                  height: 200,
                  width: 200,
                ),
                Container(
                  color:Colors.blue,
                  child:Image.asset('image/img4.jfif'),
                  height: 200,
                  width: 200,
                )
              ],
            ),
            Row(
              children: [
                Container(
                  color:Colors.blue,
                  child:Image.asset('image/img1.jfif'),
                  height: 200,
                  width: 200,
                ),
                Container(
                  color:Colors.blue,
                  child:Image.asset('image/img2.jfif'),
                  height: 200,
                  width: 200,
                )
              ],
            )
          ],
        )
    );
  }
}
class page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(child:Text('學習歷程'),);
  }
}
class page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:[
        Row(
            children:[Text("幼稚園")]
        ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 學好英文'),
                    Text('2. 跟娜娜子姊姊結婚'),
                  ],
                ),
              ),
            ],),
        ]

      ),
    );


  }
}
class page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child:Text('學習歷程'),);
  }
}
