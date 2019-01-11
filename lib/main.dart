import 'package:flutter/material.dart';
import 'models/allModels.dart';
import 'src/data.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Directa - Compra de Materiales'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    List<OrderItem> _itemList =  orders;
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
       
        title: Text(widget.title),
      ),
      body: Center(
       
        child: ListView(
          
          
          children: _itemList.map(buildItem).toList(),
          
        ),
      ),
      
    );
  }

  Widget buildItem(OrderItem oItem){
    return Container(padding: EdgeInsets.all(5),
    
    // color: Colors.orange,
    child: ListTile(title: Text(oItem.product.name, style: TextStyle(fontSize: 20),),
    subtitle: Text("Cantidad: ${oItem.cuantity}"),
    onTap: (){
      
    },),
    
    );
  }
}
