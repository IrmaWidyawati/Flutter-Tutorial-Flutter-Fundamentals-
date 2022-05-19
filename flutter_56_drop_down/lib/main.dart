import 'package:flutter/material.dart';

void main() =>  runApp( MyApp());

class MyApp extends StatelessWidget {
  //MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
class MainPage extends StatefulWidget {
  //const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Person selectedPerson;
  List<Person> persons = [
    Person('Joni'),
    Person('Barbara')
  ];
  List<DropdownMenuItem> generateItems(List<Person> persons){
    List<DropdownMenuItem> items = [];
    for (Person person in persons){
      items.add(DropdownMenuItem(child: Text(person.name), value : person ));
    }
    return items;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Demo Drop Down Button"),),
      body: Column(
        children: [
          Container(
            child: DropdownButton(
              isExpanded: true,
              value : selectedPerson, 
              items: generateItems(persons), 
              onChanged: (value){
                setState(() {
                  selectedPerson = value;
                });
              }),
          ),
          Text(selectedPerson == null ? 'No one selected': selectedPerson.name ,
          style: TextStyle(fontSize:18 , fontWeight : FontWeight.w700 ),
          ),
        ],
      )
    );
  }
}


class Person{
  String name;
  Person(this.name);
}