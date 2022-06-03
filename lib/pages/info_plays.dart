import 'package:flutter/material.dart';

class Info_Plays extends StatefulWidget {
  @override
  State<Info_Plays> createState() => _Info_PlaysState();
}

class _Info_PlaysState extends State<Info_Plays> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)?.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text('play_name'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children:[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 360,
                  color: Colors.blue,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children:[
                        Padding(
                          padding:EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),

                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex : 4,
                                child: Card(
                                  color: Colors.red,
                                  elevation : 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                      child: Container(
                                        height : 180,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(9),
                                            image: DecorationImage(
                                                image: NetworkImage(data['playimg']),
                                                fit: BoxFit.fill)),
                                      ),
                                ),
                              ),
                              Expanded(
                                flex: 9,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                  child:Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width:230,
                                        height:180,
                                        color: Colors.amberAccent,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children:[
                                            Container(
                                              child: Text(data['playname']),
                                            ),
                                            Container(
                                              child: Text(data['playloc']),
                                            ),
                                            Container(
                                              child: Text(data['playdate']),
                                            ),
                                            Container(
                                              child: Text('이것 네번째 줄입니다.'),
                                            ),
                                          ]
                                        )
                                      )
                                    ]
                                  )

                                ),
                              )
                            ]
                          )
                        ),
                        Padding(
                          padding:EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children :[
                              Container(
                                child: Text('여기에는 자세한 내용이 들어갑니다.',
                                textAlign: TextAlign.start,),
                              ),
                              Container(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                  child: Text(
                                    "Test Text",
                                    textAlign: TextAlign.start,
                                  )
                                ),
                              )
                            ]
                          )
                        )
                      ]
                    )
                  )
                )
              ]
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children:[
                Padding(
                  padding:EdgeInsetsDirectional.fromSTEB(20, 12, 20, 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children:[
                      Expanded(
                          child: Container(
                            width:500,
                            height: 100,
                            color: Colors.cyan,
                          ),
                      ),
                      Expanded(
                        child: Container(
                          width:500,
                          height: 100,
                          color: Colors.deepPurpleAccent,
                        ),
                      )
                    ]
                  )
                ),Padding(
                    padding:EdgeInsetsDirectional.fromSTEB(20, 12, 20, 12),
                    child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children:[
                          Expanded(
                            child: Container(
                              width:500,
                              height: 100,
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width:500,
                              height: 100,
                              color: Colors.cyan,
                            ),
                          )
                        ]
                    )
                ),
              ]
            )
          ],
        )
      )
    );
  }
}
