import 'package:flutter/material.dart';
import 'package:fluuter_ornek/text_example.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            width: 75,
            constraints: const BoxConstraints(
                maxHeight: 200, minHeight: 50, maxWidth: 200, minWidth: 50),
            decoration: ProjectDecoration.boxDecoration,
            child: Text(ProjectText.nameCustomer),
          ),
          TextButton(onPressed: (){}, child: Text("Save",style: TextStyle(color: Colors.white),),style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states){
            if(states.contains(MaterialState.pressed)){
              return Colors.green;
            }
            return Colors.red;
          })),),
          OutlinedButton(onPressed: (){}, child: Text("Ahmet",style: TextStyle(color: Colors.white)),style: OutlinedButton.styleFrom(
            backgroundColor: Colors.blue
          ),),
          OutlinedButton.icon(onPressed: (){}, icon: Icon(Icons.account_box), label: Text("Person")),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.black,shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))
              )),
              onPressed: (){}, child: Padding(
                padding: const EdgeInsets.only(left: 40,right: 40,top: 20,bottom: 20),
                child: Text("Buy All",style: Theme.of(context).textTheme.headline5,),
              ))
        ],
      ),
    );
  }
}

class ProjectDecoration {
  static BoxDecoration boxDecoration = const BoxDecoration(
      color: Colors.red,
      gradient: LinearGradient(colors: [Colors.blue, Colors.green]),
      borderRadius: BorderRadius.all(Radius.circular(10)));
}
