import 'package:flutter/material.dart';
class Crop_doctor extends StatefulWidget {
  const Crop_doctor({Key? key}) : super(key: key);

  @override
  State<Crop_doctor> createState() => _Crop_doctorState();
}

class _Crop_doctorState extends State<Crop_doctor> {

  Map<String, Map<String, String>> diseases = {
    'Disease1': {
      'image': 'assets/drawer_logo.png',
      'description': 'Disease1 is caused by...'
    },
    'Disease2': {
      'image': 'assets/tractor.png',
      'description': 'Disease2 is caused by...'
    },
    // Add more diseases here
  };
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.yellow.shade300,
          appBar: AppBar(
            title: const Text('Crop Doctor'),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {},
              ),
            ],
            backgroundColor: Colors.black,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new_sharp),
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
          ),
          body: ListView.builder(
          itemCount: diseases.keys.length,
          itemBuilder: (context, index) {
            String key = diseases.keys.elementAt(index);
            return ListTile(

              leading: GestureDetector(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(key),
                      Container(height:40,width:40,
                          child: Image.asset(diseases[key]!['image']!)),
                    ],
                  ),
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(key),
                        content: Text(diseases[key]!['description']!),
                        actions: <Widget>[

                          ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('CLOSE'))
                        ],
                      );
                    },
                  );
                },
              ),
            );
          },
          ),
        ),
      ),
    );
  }
}

