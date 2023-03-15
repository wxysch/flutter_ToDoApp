import 'package:flutter/material.dart';
import '../model/todo.dart';
import '../constants/colors.dart';
import '../widgets/todo_item.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final todosList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        child: Column(children: [
          searchBox(),
          Expanded(
            child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 50,
                  bottom: 20,
                ),
                child: Text(
                  'All ToDos',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500
                ),
                ),
              ),

              for (ToDo todoo in todosList)
                ToDoItem(todo: todoo,),
            ],
          ), 
            )
        ]),
      ),
    );
  }

  Widget searchBox() {
    return Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(0),
                prefixIcon: Icon(
                  Icons.search,
                  color: tdBlack,
                  size: 20,
                ),
                prefixIconConstraints: 
                BoxConstraints(
                  maxHeight: 20, 
                minWidth: 25),
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: TextStyle(color: tdGrey),
              ),
            ),
          );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: tdBGColor,
      elevation: 0,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Icon(
          Icons.menu,
          color: tdBlack,
          size: 30,
        ),
        Container(
          height: 40,
          width: 40,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/i.webp')),
        )
      ]),
    );
  }
}
