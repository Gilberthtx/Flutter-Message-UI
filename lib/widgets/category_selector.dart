import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Messages', 'Feed', 'Deals', 'Friends'];

  @override
  Widget build(BuildContext context) {
    return Container(height: 90.0,
        color: Theme.of(context).primaryColor,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector( //widget to determine tapped category
              onTap: (){ //what happens to selected category?
                setState(() {
                 selectedIndex = index; //TODO: Center selected index
                });
              },
                          child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 30.0,
                ),
                child: Text(categories[index], style: TextStyle(
                  color: index == selectedIndex ? Colors.yellow : Colors.white60,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                )),
              ),
            );
          }
        ),
    );
  }
}