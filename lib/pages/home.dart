import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> tags = <String>[
    '유쾌', '감동', '무대', '몰입', '노래', '연기', '춤', '스토리',
  ];
  final GlobalKey<TagsState> _globalKey = GlobalKey<TagsState>();

  final List<String> playname = <String>[
    '데스노트',
    '지킬앤하이드',
    '맘마미아',
    '아이다',
    '우주전사뽀로로',
    '킹키부츠',
    '데스노트',
    '지킬앤하이드',
    '맘마미아',
    '아이다',
    '우주전사뽀로로',
    '킹키부츠'
  ];

  final List<String> imageuri = <String>[
    'http://ticketimage.interpark.com/PlayDictionary/DATA/PlayDic/PlayDicUpload/040001/22/04/0400012204_174031_01.025.gif',
    'http://ticketimage.interpark.com/PlayDictionary/DATA/PlayDic/PlayDicUpload/040001/22/05/0400012205_174919_01.911.gif',
    'http://ticketimage.interpark.com/PlayDictionary/DATA/PlayDic/PlayDicUpload/040001/22/05/0400012205_174919_01.911.gif',
    'http://ticketimage.interpark.com/PlayDictionary/DATA/PlayDic/PlayDicUpload/040001/22/05/0400012205_174919_01.911.gif',
    'http://ticketimage.interpark.com/PlayDictionary/DATA/PlayDic/PlayDicUpload/040001/22/05/0400012205_174919_01.911.gif',
    'http://ticketimage.interpark.com/PlayDictionary/DATA/PlayDic/PlayDicUpload/040001/22/05/0400012205_174919_01.911.gif',
    'http://ticketimage.interpark.com/PlayDictionary/DATA/PlayDic/PlayDicUpload/040001/22/05/0400012205_174919_01.911.gif',
    'http://ticketimage.interpark.com/PlayDictionary/DATA/PlayDic/PlayDicUpload/040001/22/05/0400012205_174919_01.911.gif',
    'http://ticketimage.interpark.com/PlayDictionary/DATA/PlayDic/PlayDicUpload/040001/22/05/0400012205_174919_01.911.gif',
    'http://ticketimage.interpark.com/PlayDictionary/DATA/PlayDic/PlayDicUpload/040001/22/05/0400012205_174919_01.911.gif',
    'http://ticketimage.interpark.com/PlayDictionary/DATA/PlayDic/PlayDicUpload/040001/22/05/0400012205_174919_01.911.gif',
    'http://ticketimage.interpark.com/PlayDictionary/DATA/PlayDic/PlayDicUpload/040001/22/05/0400012205_174919_01.911.gif',
  ];

  final List<String> playloc = <String>[
    '예술의 전당 서울1',
    '예술의 전당 서울2',
    '예술의 전당 서울3',
    '예술의 전당 서울4',
    '예술의 전당 서울5',
    '예술의 전당 서울6',
    '예술의 전당 서울1',
    '예술의 전당 서울2',
    '예술의 전당 서울3',
    '예술의 전당 서울4',
    '예술의 전당 서울5',
    '예술의 전당 서울6',
  ];

  final List<String> playdate = <String>[
    '2022년 12월 12일',
    '2022년 12월 12일',
    '2022년 12월 12일',
    '2022년 12월 12일',
    '2022년 12월 12일',
    '2022년 12월 12일',
    '2022년 12월 12일',
    '2022년 12월 12일',
    '2022년 12월 12일',
    '2022년 12월 12일',
    '2022년 12월 12일',
    '2022년 12월 12일',
  ];

  //Map data = {};

  @override
  Widget build(BuildContext context) {

    //data = ModalRoute.of(context)?.settings.arguments as Map;



    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Musical for Dummies'),
          centerTitle: true,
          elevation: 0,
          leading:Container(),
        ),
        body: Container(
            child: Column(
              children:[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ListView.builder(
                        itemCount: playname.length,
                        itemBuilder: (context, index) {
                          return Card(
                              clipBehavior: Clip.antiAlias,
                              child: Container(
                                  height: 150,
                                  padding: const EdgeInsets.all(0),
                                  child: Row(children: [
                                    Expanded(
                                      flex: 6,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    '${imageuri[index]}'),
                                                fit: BoxFit.fill)),
                                      ),
                                    ),
                                    Spacer(
                                      flex: 1,
                                    ),
                                    Expanded(
                                      flex: 14,
                                      child: Container(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment
                                                .start,
                                            mainAxisAlignment: MainAxisAlignment
                                                .start,
                                            children: <Widget>[
                                              Text("${playname[index]}",
                                                  style: TextStyle(
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.bold)),
                                              Row(
                                                children: <Widget>[
                                                  Text(
                                                    '상영 기간 : ',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "${playdate[index]}",
                                                    style: TextStyle(
                                                        fontSize: 15.0),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Text(
                                                    '상영 장소 : ',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                  Text(
                                                    '${playloc[index]}',
                                                    style: TextStyle(fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Text(
                                                    '기타 사항 : ',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "기타 사항",
                                                    style: TextStyle(
                                                        fontSize: 15.0),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  SizedBox(height:10,)
                                                ]
                                              ),
                                              Align(
                                                alignment: Alignment.bottomRight,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: const EdgeInsets.all(7.0),
                                                      child: SizedBox(
                                                        width: 105,
                                                        height: 25,
                                                        child: ElevatedButton(
                                                          onPressed: () {
                                                            Navigator.pushNamed(
                                                                context,
                                                                '/info_plays',
                                                                arguments: {
                                                                  'playimg' : imageuri[index],
                                                                  'playname': playname[index],
                                                                  'playdate': playdate[index],
                                                                  'playloc': playloc[index],
                                                                });
                                                          },
                                                          child: Text("자세히 보기"),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              )
                                            ]
                                        ),
                                      ),
                                    )
                                  ]
                                  )
                              )
                          );
                        }
                    ),
                  )
                ),
                SizedBox(
                  width: double.infinity,
                  height:100,
                  child: Tags(
                    key: _globalKey,
                    itemCount: tags.length,
                    itemBuilder: (int index){
                      final _tags = tags[index];
                      return ItemTags(
                        key: Key(index.toString()),
                        index:index,
                        title: _tags,
                        //onPressed: () {},

                      );

                    },
                  ),
                )
              ]
            )
        )
    );
  }
}
