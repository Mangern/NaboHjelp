import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  final List<Widget> _navigationItems = [
    NavigationItem(0, "Spør naboen", "Har noen melk?...."),
    NavigationItem(1, "Tilby naboen", "Kan klippe gresset hele sommeren..."),
    NavigationItem(2, "Gi bort/selge noe", "Gitar selges..."),
    NavigationItem(3, "Nabomelding", "Party all night!..."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Velg meldingstype"),
      ),
      body: LayoutBuilder(
        builder: (context, constraint) {
      return new GridView.builder(
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: constraint.maxWidth * 4 / constraint.maxHeight,
        ),
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              
            },
            child: GridTile(
              child: _navigationItems[i],
              footer: i < _navigationItems.length -1 ?
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Divider(height: 1.0,),
                ) :
                SizedBox(height: 0.0,),
            ),
          );
        },
      );
    },
    )
    );
  }
}

class NavigationItem extends StatelessWidget {
  final int id;
  final String title, description;

  NavigationItem(this.id, this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                color: Colors.teal,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 5.0,),
            Text(
              "\"$description\"",
              style: TextStyle(
                color: Colors.grey.shade600
              ),
            )
          ],
        ),
      ),
    );
  }
}