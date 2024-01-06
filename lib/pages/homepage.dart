import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text('              ALVAS',
                style: GoogleFonts.varelaRound(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,)
                    ),
                    iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Colors.orange,
            ),
        drawer: customDrawer(context),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                  left: 10, right: 10, top: 5, bottom: 10),
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context,'/profile'),
                child: Card(
                  elevation: 10,
                  surfaceTintColor: Colors.transparent,
                  child: ListTile(
                    leading:  CircleAvatar(
                      backgroundImage:AssetImage('assets/download.jpg'),
                      radius: 30,
                    ),
                    title: Text(
                      'KARTHIK.S',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: GoogleFonts.varelaRound(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      '4AL22EC032',
                      style: GoogleFonts.varelaRound(
                          color: Colors.grey, fontSize: 18),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                'Events',
                style: GoogleFonts.varelaRound(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Divider(
                        color: Colors.grey.shade300,
                      ),
                      const ListTile(
                        title: Text('Event name'),
                        subtitle: Text('Hello World'),
                        leading: Icon(Icons.notifications_on_rounded,color:Colors.black),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ],
                  );
                },
                itemCount: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget customDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.orange.shade400,
            ),
            child: Center(child: Image.asset('assets/alvas_logo.png')),
          ),
          ListTile(
            leading: const Icon(Icons.school,color:Colors.black),
            title: const Text('Acadamics'),
            trailing: const Icon(Icons.play_arrow_rounded,color: Colors.orange,),
            onTap: () => Navigator.pushNamed(context, "/academics"),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.pedal_bike_outlined,color:Colors.black),
            title: const Text('Clubs'),
            trailing: const Icon(Icons.play_arrow_rounded,color: Colors.orange),
            onTap: () => Navigator.pushNamed(context, '/clubs'),
          ),
          const Divider(),
           ListTile(
            leading:const Icon(Icons.menu_book_rounded,color:Colors.black),
            title:const Text('Library'),
            trailing:const Icon(Icons.play_arrow_rounded,color: Colors.orange),
            onTap: () => Navigator.pushNamed(context , '/library'),
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.business_outlined,color:Colors.black),
            title: Text('Hostel'),
            trailing: Icon(Icons.play_arrow_rounded,color: Colors.orange),
            onTap: () =>Navigator.pushNamed(context, "/hostel"),
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.logout,color:Colors.black),
            title: Text('Sign Out'),
            trailing: Icon(Icons.play_arrow_rounded,color: Colors.orange),
            onTap: () =>Navigator.pushNamed(context, "/login"),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
