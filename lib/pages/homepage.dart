import 'package:google_fonts/google_fonts.dart';
import'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('ALVAS',style: GoogleFonts.varelaRound(fontSize: 25,color: Colors.white),)),
        backgroundColor: Colors.orange,
      ),
      endDrawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.orange[300]
                ),
                child:Container(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height:100,
                        child: Image.asset('assets/profile.png'),
                      ),
                      Container(
                        width: double.infinity,
                        height: 20,
                        child: Center(child: Text("XYZ")),
                      )
                    ],
                  ),
                  )
                ),
              ListTile(
                leading: Icon(Icons.sentiment_satisfied_outlined),
                title: Text('Profile',style: GoogleFonts.varelaRound(fontSize: 15),),
                onTap: (){
                  Navigator.pushNamed(context, '/profile');
                },
              ),
              ListTile(
                leading: Icon(Icons.school_rounded),
                title: Text('Academics',style: GoogleFonts.varelaRound(fontSize: 15),),
                onTap: (){
                  Navigator.pushNamed(context, '/academics');
                },
              ),
              ListTile(
                leading: Icon(Icons.local_library_sharp),
                title: Text('Library',style: GoogleFonts.varelaRound(fontSize: 15),),
                onTap: (){
                  Navigator.pushNamed(context, '/library');
                },
              ),
              ListTile(
                leading: Icon(Icons.apartment),
                title: Text('Hostel',style: GoogleFonts.varelaRound(fontSize: 15),),
                onTap: (){
                  Navigator.pushNamed(context, '/hostel');
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Sign Out',style: GoogleFonts.varelaRound(fontSize: 15),),
                onTap: (){
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}