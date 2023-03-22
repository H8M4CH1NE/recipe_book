import 'package:flutter/material.dart';

class PageSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recipe Book - Search Page'),),
      body: Container(
        child: Center(
          child: Container(
            width: 300,
            height: 300,
            // color: Colors.red,
            child: Row(
              children: [
                ButtonIngredient()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonIngredient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        customBorder: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onTap: () {
          print("The button was clicked!");
        },
        child: Ink(
          child: Container(
            padding: EdgeInsetsDirectional.all(5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(radius: 37, backgroundImage: NetworkImage('https://picsum.photos/seed/288/600')),
                SizedBox(height: 5),
                Text("Chicken", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}