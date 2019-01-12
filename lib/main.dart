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
        // primarySwatch: Colors.blue[0],
        primaryColor: Colors.white,
        primaryColorLight: Colors.white,
        canvasColor: Colors.white,
        primaryColorDark: Color(0xFF52110C),
      ),
      home: MyHomePage(title: 'Compras'),
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
  List<OrderItem> _itemList = orders;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Color(0x3F000000), width: 0.5)),
            ),
            child: AppBar(
              elevation: 0,
              backgroundColor: Theme.of(context).primaryColorLight,
              title: Container(
                alignment: Alignment(0, 0),
                padding: EdgeInsets.only(
                  top: 10,
                  // bottom: 10,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/directalogo.jpeg',
                    ),
                    CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColorDark,
                      child: Text(
                        "A",
                        style: TextStyle(
                            color: Theme.of(context).primaryColorLight),
                      ),
                    )
                    // Text(widget.title)
                  ],
                ),
              ),
            ),
          ),
        ),
        body: Center(
          child: ListView(
            children: _itemList.map(buildItem).toList(),
          ),
        ),
        floatingActionButton: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 30, bottom: 10),
              child: FloatingActionButton(
                backgroundColor: Theme.of(context).primaryColorDark,
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300),
                ),
              ),
            )
          ],
        ));
  }

  Widget buildItem(OrderItem oItem) {
    return Container(
      padding: EdgeInsets.all(5),

      // color: Colors.orange,
      child: ListTile(
        leading: Icon(Icons.build,),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.info, color: Theme.of(context).primaryColorDark),
            Checkbox(
              value: false,
            )
          ],
        ),
        // trailing: Icon(Icons.info, color: Theme.of(context).primaryColorDark),

        title: Text(
          oItem.product.name,
          style: TextStyle(fontSize: 20),
        ),
        subtitle: Text("Cantidad: ${oItem.cuantity}"),
        onTap: () {},
      ),
    );
  }
}
