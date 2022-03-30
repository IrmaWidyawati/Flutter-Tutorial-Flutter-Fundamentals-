import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: "No Name");
  bool isON = false;
  void saveData() async
  {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("nama", controller.text);
    pref.setBool("ison", isON);
  }

  Future<String> getNama() async
  {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("nama") ?? "No Name";
  }
  
Future<bool> getON() async
  {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool("ison") ?? false;
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(title: Text("Shared Preferences Example"),
      ),
      body: Center(
        child : Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
            ),
            Switch(
              value : isON,
              onChanged: (newValue) {
                setState(() {
                  isON = newValue;
                });
              }
            ),
            ElevatedButton(onPressed: (){saveData();}, child: Text("Save")),
            ElevatedButton(
              child: Text("Load"),
              onPressed: (){
              getNama().then((s){
                controller.text = s;
                setState(() {});
              });
              getON().then((b) {
                isON = b;
                setState(() {
                });
              });
              },
              ),
          ],
        ),
      ),
      ),
     );
  }
}