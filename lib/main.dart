import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home: AnimalScreen());
  }
}

class AnimalScreen extends StatefulWidget {
  const AnimalScreen({super.key});

  @override
  State<AnimalScreen> createState() => _AnimalScreenState();
}

class _AnimalScreenState extends State<AnimalScreen> {
  List<String> animal = ['Dog','Cat','Sparrow','Pigeon','Octopus','Rhino','Leopard','Lemon','Jagaur'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("List of animals"),
      ),
      body: ListView.builder(
        itemCount: animal.length,
          itemBuilder: (context,index){
        return ListTile(
          title: Text(animal[index]),
          onTap: (){
            Navigator.push(context,MaterialPageRoute ( builder: (BuildContext context) =>AnimalDetailScreen(animalName: animal[index])));
          },
        );
      }),
    );
  }
}
class AnimalDetailScreen extends StatelessWidget {
  String animalName;
   AnimalDetailScreen({super.key, required this.animalName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(animalName),
      ),
      body: Center(child: Text(animalName)),
    );
  }
}

