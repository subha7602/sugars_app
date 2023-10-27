import 'package:flutter/material.dart';
import 'package:sugars_app/crop_doctor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow.shade200,
        appBar: AppBar(
backgroundColor: Colors.black,
          title: Text("Menu"),
          actions: [
            Icon(Icons.cloud),
            SizedBox(width: 10,),
            Icon(Icons.phone),
            SizedBox(width: 10,),
            Icon(Icons.person),
            SizedBox(width: 10,),
          ],
        ),
        
        drawer: Drawer(
backgroundColor: Colors.yellow.shade200,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child:
                CircleAvatar(
                  backgroundImage: Image.asset(
                    'assets/tractor.png',
                    fit: BoxFit.cover,
                  ).image,
                ),
              ),
              ListTile(
                  leading: Icon(Icons.article_outlined),
                  title: Text("MY DETAILS"),
                  iconColor: Colors.orange,
                  onTap: () {
                    Navigator.pop(context);
                  }),
              Divider(),
              ListTile(
                leading: Icon(Icons.calendar_month),
                title: Text("CROP CALENDER"),
                iconColor: Colors.orange,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.local_hospital),
                title: Text("CROP DOCTOR"),
                iconColor: Colors.orange,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Crop_doctor()));
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.message),
                title: Text("ALERTS/MESSAGES"),
                iconColor: Colors.orange,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.question_mark),
                title: Center(child: Text("CULTIVATION TECHIQUES")),
                iconColor: Colors.orange,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.spatial_audio_off_rounded),
                title: Text("CALL REQUEST"),
                iconColor: Colors.orange,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.cloud),
                title: Text("WEATHER FORECAST"),
                iconColor: Colors.orange,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.call),
                title: Text("CANE INSPECTER"),
                iconColor: Colors.orange,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("SETTINGS"),
                iconColor: Colors.orange,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("SIGN OUT"),
                iconColor: Colors.orange,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.warning),
                title: Text("DISCLIMER"),
                iconColor: Colors.orange,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
            ],
          ),
        ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(15.0),
            height: MediaQuery.of(context).size.height*0.65,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.orangeAccent,
                border: Border.all(
                  color: Colors.deepOrange, // Border color
                  width: 3.5, // Border width
                ),
                borderRadius: BorderRadius.circular(25)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: GridView(
                padding: EdgeInsets.zero,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.yellow.shade300,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.article_outlined,
                            size: 50, color: Colors.black),
                        Text(
                          "MY DETAILS",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.yellow.shade300,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.calendar_month, size: 50, color: Colors.black),
                        Text(
                          "CROP CALENDAR",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Crop_doctor()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.yellow.shade300,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.local_hospital_rounded,
                              size: 50, color: Colors.black),
                          Text(
                            "CROP DOCTOR",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.yellow.shade300,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.message_rounded,
                            size: 50, color: Colors.black),
                        Text(
                          "ALERTS/MESSAGES",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.yellow.shade300,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.question_mark_rounded,
                            size: 50, color: Colors.black),
                        Text(
                          "CANE CULTIVATION TECHNIQUES",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.yellow.shade300,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.spatial_audio_off_rounded,
                            size: 50, color: Colors.black),
                        Text(
                          "CALL REQUEST",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ],
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
