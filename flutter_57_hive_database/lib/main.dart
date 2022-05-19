import 'package:flutter/material.dart';
import 'package:flutter_57_hive_database/model/monster.dart';
import 'package:flutter_57_hive_database/view/main_page.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:hive/hive.dart';
import 'package:flutter_57_hive_database/model/monster.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //var appDocumentDirectory = await pathProvider.getApplicationDocumentsDirectory();
    
   if(!kIsWeb){
          final documentsDirectory = await pathProvider.getApplicationDocumentsDirectory();
          Hive.init(documentsDirectory.path);
        }
  Hive.registerAdapter(MonsterAdapter());
  runApp(MyApp());}

class MyApp extends StatelessWidget {
  //const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage()      
    );
  }
}


