import 'package:alvas_mangment/widgets/Card_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            'Library',
            style: GoogleFonts.varelaRound(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin:const EdgeInsets.only(left: 10 , right: 10),
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: Card(
                  elevation: 10,
                  surfaceTintColor: Colors.transparent,
                  child: Center(
                    child: SfRadialGauge(
                      axes: [
                        RadialAxis(
                          minimum: 0,
                          maximum: 100,
                          ranges: [
                            GaugeRange(
                              startValue: 0,
                              endValue: 35,
                              color: Colors.red,
                            ),
                            GaugeRange(
                              startValue: 35,
                              endValue: 70,
                              color: Colors.orange,
                            ),
                            GaugeRange(
                              startValue: 70,
                              endValue: 100,
                              color: Colors.green,
                            ),
                          ],
                          pointers:const [
                            NeedlePointer(
                              value: 50,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardBox(title: "Books", icon: Icons.book),
                  CardBox(
                    title: "Journals",
                    icon: Icons.my_library_books,
                  )
                ],
              ),
              const SizedBox(height: 10,),
             const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardBox(title: "News", icon: Icons.newspaper,),
                  CardBox(
                    title: "History",
                    icon: Icons.location_history_rounded,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
