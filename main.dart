import 'package:flutter/material.dart';

import 'app/my_app.dart';

void main() {
  runApp(MyApp());
}

//Ignore

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int count =0;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        appBar: AppBar(leading: Text("Front"), title: Text("Title"),centerTitle: true,
        actions: [Text("action1"),Padding(
          padding: const EdgeInsets.only(left: 10,),
          child: Text("action2"),
        )],
        ),
        body: 
        
        
        Container(color: Colors.orange,
          child: SingleChildScrollView(
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
             
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                    count = count +1;
                      
                    });
                    debugPrint("Hello Dolma $count");
                    
                    },onHover: (value) {
                      debugPrint("Hovered");
                    },
                    
                     child: Text("Click Me")),
                ),

                   
                Container(child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
 Text(count.toString()), Icon(Icons.phone),
                  ],
                ),
                color: Colors.green,
                padding: EdgeInsets.only(top: 20),
                margin: EdgeInsets.all(20),
                ),
               Container(child: Text("World"),
                color: Colors.red,
                padding: EdgeInsets.only(top: 20),
                margin: EdgeInsets.all(20),
                ),Container(child: Text("Hello"),
                color: Colors.green,
                padding: EdgeInsets.only(top: 20),
                margin: EdgeInsets.all(20),
                ),Container(child: Text("Hello"),
                color: Colors.green,
                padding: EdgeInsets.only(top: 20),
                margin: EdgeInsets.all(20),
                ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ), Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"*200),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),Container(child: Text("Hello"),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.all(20),
              ),
              ],
            ),
          ),
        ),
        );
  }
}