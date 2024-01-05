import 'package:flutter/material.dart';
import 'package:alvas_mangment/pages/Academics/Academics.dart';

class Academic_Marks extends StatefulWidget {


  @override
  State<Academic_Marks> createState() => _Academic_MarksState();
}

class _Academic_MarksState extends State<Academic_Marks> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Marks'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
           const TabBar(
              tabs: [
                Tab(
                  // icon: Icon(Icons.border_color_sharp),
                  text: 'IA1',
                ),
                Tab(
                  // icon: Icon(Icons.border_all_rounded),
                  text: 'IA2',
                ),
                Tab(
                  // icon: Icon(Icons.border_clear),
                  text: 'IA3',
                ),
              ],
              ),
              Expanded(
                child:TabBarView(
                  children: [
                    Column(
                      children: [
                        DataTable(
                          columns:const [
                            DataColumn(label:  Text('No',style: TextStyle(fontWeight: FontWeight.bold))),
                            DataColumn(label:  Text('Subjects',style: TextStyle(fontWeight: FontWeight.bold))),
                            DataColumn(label:  Text('Marks',style: TextStyle(fontWeight: FontWeight.bold))),
                          ], 
                           rows:const [
                            DataRow(
                              mouseCursor: MaterialStateMouseCursor.textable,
                            cells: [
                              DataCell(Text('1')),
                              DataCell(Text('DBMS')),
                              DataCell(Text('19'))
                            ]),
                             DataRow (
                            cells: [
                              DataCell(Text('2')),
                              DataCell(Text('DBMS_LAB')),
                              DataCell(Text('15'))
                            ]),
                            DataRow(
                            cells: [
                              DataCell(Text('3')),
                              DataCell(Text('ATCD')),
                              DataCell(Text('11'))
                            ]),
                            DataRow(
                            cells: [
                              DataCell(Text('4')),
                              DataCell(Text('AIML')),
                              DataCell(Text('20'))
                            ]),
                            DataRow(
                            cells: [
                              DataCell(Text('5')),
                              DataCell(Text('Computer Networks ')),
                              DataCell(Text('15'))
                            ]),
                              DataRow(
                            cells: [
                              DataCell(Text('6')),
                              DataCell(Text('Angular JS')),
                              DataCell(Text('16'))
                            ]),
                            ],
                            ),
                      ],
                    ),

                    // ==============IA2===============
                    
                    
                    Column(
                      children: [
                          DataTable(
                          columns:const [
                            DataColumn(label:  Text('No',style: TextStyle(fontWeight: FontWeight.bold))),
                            DataColumn(label:  Text('Subjects',style: TextStyle(fontWeight: FontWeight.bold))),
                            DataColumn(label:  Text('Marks',style: TextStyle(fontWeight: FontWeight.bold))),
                          ], 
                          rows: const[
                            DataRow(
                              mouseCursor: MaterialStateMouseCursor.textable,
                            cells: [
                              DataCell(Text('1')),
                              DataCell(Text('DBMS')),
                              DataCell(Text('19'))
                            ]),
                            DataRow(
                            cells: [
                              DataCell(Text('2')),
                              DataCell(Text('DBMS_LAB')),
                              DataCell(Text('19'))
                            ]),
                            DataRow(
                            cells: [
                              DataCell(Text('3')),
                              DataCell(Text('ATCD')),
                              DataCell(Text('10'))
                            ]),
                            DataRow(
                            cells: [
                              DataCell(Text('4')),
                              DataCell(Text('AIML')),
                              DataCell(Text('19'))
                            ]),
                            DataRow(
                            cells: [
                              DataCell(Text('5')),
                              DataCell(Text('Computer Networks ')),
                              DataCell(Text('14'))
                            ]),
                              DataRow(
                            cells: [
                              DataCell(Text('6')),
                              DataCell(Text('Angular JS')),
                              DataCell(Text('10'))
                            ]),
                            ],
                            ),
                      ]
                        ),
                    
                    Column(
                      children: [
                        DataTable(
                          columns:const [
                            DataColumn(label:  Text('No',style: TextStyle(fontWeight: FontWeight.bold))),
                            DataColumn(label:  Text('Subjects',style: TextStyle(fontWeight: FontWeight.bold))),
                            DataColumn(label:  Text('Marks',style: TextStyle(fontWeight: FontWeight.bold))),
                          ], 
                          rows:const [
                            DataRow(
                              mouseCursor: MaterialStateMouseCursor.textable,
                            cells: [
                              DataCell(Text('1')),
                              DataCell(Text('DBMS')),
                              DataCell(Text('16'))
                            ]),
                            DataRow(
                            cells: [
                              DataCell(Text('2')),
                              DataCell(Text('DBMS_LAB')),
                              DataCell(Text('17'))
                            ]),
                            DataRow(
                            cells: [
                              DataCell(Text('3')),
                              DataCell(Text('ATCD')),
                              DataCell(Text('14'))
                            ]),
                            DataRow(
                            cells: [
                              DataCell(Text('4')),
                              DataCell(Text('AIML')),
                              DataCell(Text('12'))
                            ]),
                            DataRow(
                            cells: [
                              DataCell(Text('5')),
                              DataCell(Text('Computer Networks ')),
                              DataCell(Text('19'))
                            ]),
                              DataRow(
                            cells: [
                              DataCell(Text('6')),
                              DataCell(Text('Angular JS')),
                              DataCell(Text('9'))
                            ]),
                            ],
                            ),
                      ]
                        ),
                ]),
              ),
          ],
        ),
      ),
    );
  }
}

